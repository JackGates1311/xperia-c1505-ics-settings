.class public Lcom/android/settings/LocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "LocalePicker.java"

# interfaces
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    .line 55
    invoke-virtual {p0, p0}, Lcom/android/settings/LocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 56
    return-void
.end method

.method private getDefaultSimCountry(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 2
    .param p1, "manager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 101
    .local v0, "context":Landroid/content/Context;
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    return-object v1
.end method

.method private isSimStateReady(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .param p1, "manager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 110
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 61
    invoke-static {p1}, Lcom/android/settings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 62
    return-void
.end method

.method protected setUpDefaultLocales()V
    .locals 6

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/LocalePicker;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 70
    .local v3, "manager":Landroid/telephony/TelephonyManager;
    invoke-direct {p0, v3}, Lcom/android/settings/LocalePicker;->isSimStateReady(Landroid/telephony/TelephonyManager;)Z

    move-result v2

    .line 73
    .local v2, "isSimReady":Z
    if-eqz v2, :cond_1

    invoke-direct {p0, v3}, Lcom/android/settings/LocalePicker;->getDefaultSimCountry(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, p0, Lcom/android/settings/LocalePicker;->mDefaultSimCountry:Ljava/lang/String;

    .line 74
    const-string v4, "ro.product.locale.language"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/LocalePicker;->mDefaultSwLanguage:Ljava/lang/String;

    .line 75
    const-string v4, "ro.product.locale.region"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/LocalePicker;->mDefaultSwCountry:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "default-locale"

    invoke-static {v4, v5}, Lcom/android/settings/CustomizedSettings;->getGeneralSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "custLocaleStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "locale-sortorder"

    invoke-static {v4, v5}, Lcom/android/settings/CustomizedSettings;->getGeneralSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "custLocaleType":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/settings/LocalePicker;->getCountryPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/LocalePicker;->setCustomizedCountry(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/settings/LocalePicker;->getLanguagePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/LocalePicker;->setCustomizedLanguage(Ljava/lang/String;)V

    .line 86
    if-eqz v1, :cond_2

    const-string v4, "single"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 87
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/settings/LocalePicker;->setState(I)V

    .line 97
    :cond_0
    :goto_1
    return-void

    .line 73
    .end local v0    # "custLocaleStr":Ljava/lang/String;
    .end local v1    # "custLocaleType":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 88
    .restart local v0    # "custLocaleStr":Ljava/lang/String;
    .restart local v1    # "custLocaleType":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    const-string v4, "top"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    :cond_3
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/settings/LocalePicker;->setState(I)V

    goto :goto_1

    .line 92
    :cond_4
    if-eqz v2, :cond_5

    .line 93
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/settings/LocalePicker;->setState(I)V

    goto :goto_1

    .line 95
    :cond_5
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/LocalePicker;->setState(I)V

    goto :goto_1
.end method
