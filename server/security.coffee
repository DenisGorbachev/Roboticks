Accounts.loginServiceConfiguration.remove({
  service: "facebook"
});
Accounts.loginServiceConfiguration.insert({
  service: "facebook",
  appId: Meteor.settings.public.facebook.appId,
  secret: Meteor.settings.public.facebook.secret
});
