import 'package:grospick/models/user.dart';
import 'package:grospick/utils/global.dart';

import 'package:mobx/mobx.dart';
part 'user_store.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store {
  @observable
  bool isLoading = false;

  @observable
  bool isLoggedIn = false;

  @observable
  bool isCodeSent = false;

  @observable
  bool isCodeAutoReceived = false;

  @observable
  User loggedInUser;

  @observable
  String verfId;

  @observable
  bool isCheckUser = false;

  @action
  logIn({
    String email,
    String password,
  }) async {
    try {
      isLoading = true;
      String user = await firebaseAuthService.signIn(email, password);
      print(user);
      if (user == null) {
        isLoading = true;
      } else {
        isLoading = false;
        await preferenceService.setUID(user);
      }
    } catch (e) {
      print(e);
      isLoading = false;
      throw e;
    }
  }

  // @action
  // sendOTP(
  //     {String phoneNumber,
  //     Function verificationFailed,
  //     Function verificationComplete,
  //     String name,
  //     String email,
  //     String dob,
  //     bool isLogin = false,
  //     bool isCheckUser = false}) async {
  //   isLoading = true;
  //   try {
  //     bool userExist = false;
  //     if (isCheckUser) userExist = await userService.checkUser(phoneNumber);
  //     print(isLogin);
  //     print(isCheckUser);
  //     print(userExist);
  //     if (isLogin && !userExist) {
  //       isLoading = false;
  //       return false;
  //     }
  //     if (userExist && !isLogin) {
  //       isLoading = false;
  //       return false;
  //     }
  //     firebaseAuthService.verifyPhoneNumber(
  //         phoneNumber: phoneNumber,
  //         codeSentCallBack: (String id, [int forceCodeSend]) {
  //           print("code sent");
  //           print(id);
  //           print(forceCodeSend);
  //           verfId = id;
  //           isCodeSent = true;
  //           isLoading = false;
  //         },
  //         verificationComplete: (AuthCredential authCredential) async {
  //           print("auto verification complete");
  //           isCodeAutoReceived = true;
  //           isLoading = true;
  //           User response = await firebaseAuthService.verifyOTP(
  //               authCredential: authCredential);
  //           if (name != null) response.name = name;
  //           if (email != null) response.email = email;
  //           if (dob != null) response.dob = dob;
  //           await createUser(response);
  //           verificationComplete();
  //         },
  //         codeAutoRetrievalTimeout: (String id) {
  //           print("code auto retrieval");
  //           print(id);
  //           verfId = id;
  //           isCodeSent = true;
  //           isLoading = false;
  //         },
  //         verificationFailed: (AuthException exception) {
  //           print("verification failed");
  //           print(exception.message);
  //           isLoading = false;
  //           verificationFailed(exception);
  //           throw exception;
  //         });
  //   } catch (e) {
  //     print(e);
  //     isLoading = false;
  //     throw e;
  //   }
  // }

  // @action
  // changeNumber() {
  //   isCodeSent = false;
  //   isCodeAutoReceived = false;
  // }

  // @action
  // verifyOTP({String otp, String name, String email, String dob}) async {
  //   isLoading = true;
  //   try {
  //     AuthCredential authCredential =
  //         PhoneAuthProvider.getCredential(verificationId: verfId, smsCode: otp);
  //     User response =
  //         await firebaseAuthService.verifyOTP(authCredential: authCredential);
  //     if (name != null) response.name = name;
  //     if (email != null) response.email = email;
  //     if (dob != null) response.dob = dob;
  //     await createUser(response);
  //   } catch (e) {
  //     isLoading = false;
  //     throw e;
  //   }
  // }

  // @action
  // getUser() async {
  //   isLoading = true;
  //   User user = await userService.getUser();
  //   if (user.address1 == null) {
  //     bool per = await locationPermission();
  //     if (per) {
  //       isLoading = true;
  //       Address response = await locationService.getCurrentLocationAddress();
  //       print("response in fetch address ");
  //       if (response != null) {
  //         print(Address.toJson(response));
  //         user.address1 = response.address1;
  //         user.address2 = response.address2;
  //         user.region = response.region;
  //       }
  //     }
  //   }
  //   await userService.updateUser(user: user);
  //   await setLoggedIn(user);
  //   isLoading = false;
  // }

  // @action
  // updatedUser({User user, File imageFile}) async {
  //   isLoading = true;
  //   if (imageFile != null) {
  //     String url = await firebaseService.uploadFile(
  //         folderName: 'user_profile', fileName: user.uid, file: imageFile);
  //     user.imgUrl = url;
  //   }
  //   await userService.updateUser(user: user);
  //   await preferenceService.setUID(user.uid);
  //   loggedInUser = user;
  //   isLoading = false;
  // }

  // @action
  // setLoggedIn(User user) async {
  //   print("set login user");
  //    await preferenceService.setUID(user.uid);
  //   loggedInUser = user;
  //   isLoggedIn = true;
  // }

  @action
  createUser(
    String email,
    String password,
  ) async {
    try {
      isLoading = true;
      String user = await firebaseAuthService.signUp(email, password);
      print(user);
      if (user == 'error') {
        print("dfdfd");
        isCodeSent = false;
        isLoading = true;
      } else {
        isLoading = false;
        print('dfdfdf');
      }
    } catch (e) {
      print(e);
      throw e;
    }
  }

  // @action
  // setLoggedIn(User user) async {
  //   print("set login user");

  //   loggedInUser = user;
  //   isLoggedIn = true;
  // }

  @action
  checking() async {
    String user = await firebaseAuthService.getCurrentuser();
    if (user == null)
      isLoggedIn = false;
    else {
      isLoggedIn = true;
      await preferenceService.setUID(user);
    }
  }

  @action
  logout() async {
    isLoading = true;
    firebaseAuthService.signOut();
    isLoggedIn = false;
    loggedInUser = null;
    isCodeSent = false;
    isCodeAutoReceived = false;
    await preferenceService.removeUID();
    isLoading = false;
  }
}
