.class final Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;,
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SapStateChangedHandler;,
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;,
        Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    }
.end annotation


# instance fields
.field private mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field private final mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

.field private mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

.field private final mHidProfile:Lcom/android/settings/bluetooth/HidProfile;

.field private final mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

.field private final mPanProfile:Lcom/android/settings/bluetooth/PanProfile;

.field private final mProfileNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mSapProfile:Lcom/android/settings/bluetooth/SapProfile;

.field private final mServiceListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings/bluetooth/BluetoothEventManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .param p3, "deviceManager"    # Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .param p4, "eventManager"    # Lcom/android/settings/bluetooth/BluetoothEventManager;

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings/bluetooth/PanProfile;

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    .line 94
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 97
    iput-object p3, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 98
    iput-object p4, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    .line 100
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V

    .line 101
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->setProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V

    .line 103
    invoke-virtual {p2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 106
    .local v0, "uuids":[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    .line 111
    :cond_0
    new-instance v1, Lcom/android/settings/bluetooth/HidProfile;

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/bluetooth/HidProfile;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings/bluetooth/HidProfile;

    .line 112
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings/bluetooth/HidProfile;

    const-string v2, "HID"

    const-string v3, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v1, Lcom/android/settings/bluetooth/SapProfile;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/SapProfile;-><init>()V

    iput-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settings/bluetooth/SapProfile;

    .line 122
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settings/bluetooth/SapProfile;

    const-string v2, "SAP"

    const-string v3, "com.android.bluetooth.sap.statechanged"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->addSapProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v1, "LocalBluetoothProfileManager"

    const-string v2, "LocalBluetoothProfileManager construction complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method private addProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "stateChangedAction"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 185
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    return-void
.end method

.method private addSapProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "stateChangedAction"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SapStateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$SapStateChangedHandler;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Added handler for SAP state changed Notifications"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method


# virtual methods
.method declared-synchronized addNewProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;
    .param p2, "localUuids"    # [Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/ParcelUuid;",
            "[",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p3, "profiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/bluetooth/LocalBluetoothProfile;>;"
    .local p4, "removedProfiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/bluetooth/LocalBluetoothProfile;>;"
    monitor-enter p0

    if-nez p1, :cond_1

    .line 440
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 402
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_4

    .line 403
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 408
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 413
    :cond_4
    sget-object v0, Lcom/android/settings/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 416
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 420
    :cond_5
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 423
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 427
    :cond_6
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings/bluetooth/HidProfile;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings/bluetooth/HidProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 430
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings/bluetooth/HidProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings/bluetooth/HidProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 434
    :cond_7
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings/bluetooth/PanProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings/bluetooth/PanProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings/bluetooth/PanProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings/bluetooth/PanProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method addServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 286
    return-void
.end method

.method callServiceConnectedListeners()V
    .locals 3

    .prologue
    .line 295
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 296
    .local v1, "l":Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    invoke-interface {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceConnected()V

    goto :goto_0

    .line 298
    .end local v1    # "l":Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    :cond_0
    return-void
.end method

.method callServiceDisconnectedListeners()V
    .locals 3

    .prologue
    .line 302
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 303
    .local v1, "listener":Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    invoke-interface {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceDisconnected()V

    goto :goto_0

    .line 305
    .end local v1    # "listener":Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    :cond_0
    return-void
.end method

.method getA2dpProfile()Lcom/android/settings/bluetooth/A2dpProfile;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    return-object v0
.end method

.method getHeadsetProfile()Lcom/android/settings/bluetooth/HeadsetProfile;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    return-object v0
.end method

.method getProfileByName(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    return-object v0
.end method

.method public declared-synchronized isManagerReady()Z
    .locals 2

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    .line 312
    .local v0, "profile":Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    if-eqz v0, :cond_0

    .line 313
    invoke-interface {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 319
    :goto_0
    monitor-exit p0

    return v1

    .line 315
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    .line 316
    if-eqz v0, :cond_1

    .line 317
    invoke-interface {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 319
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 311
    .end local v0    # "profile":Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method removeServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 291
    return-void
.end method

.method setBluetoothStateOn()V
    .locals 2

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 210
    .local v0, "uuids":[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    .line 214
    return-void
.end method

.method updateLocalProfiles([Landroid/os/ParcelUuid;)V
    .locals 4
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;

    .prologue
    .line 138
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    if-nez v0, :cond_0

    .line 140
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local A2DP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Lcom/android/settings/bluetooth/A2dpProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/A2dpProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    .line 142
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    const-string v1, "A2DP"

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    :goto_0
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    if-nez v0, :cond_2

    .line 153
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local HEADSET profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v0, Lcom/android/settings/bluetooth/HeadsetProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settings/bluetooth/HeadsetProfile;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    .line 156
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    const-string v1, "HEADSET"

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_2
    :goto_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 165
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    if-nez v0, :cond_3

    .line 166
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local OPP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Lcom/android/settings/bluetooth/OppProfile;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/OppProfile;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    .line 169
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    const-string v1, "OPP"

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->registerProfileIntentReceiver()V

    .line 177
    return-void

    .line 145
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: A2DP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_2

    .line 160
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: HEADSET profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 171
    :cond_6
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    if-eqz v0, :cond_3

    .line 172
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: OPP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method declared-synchronized updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;
    .param p2, "localUuids"    # [Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/ParcelUuid;",
            "[",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p3, "profiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/bluetooth/LocalBluetoothProfile;>;"
    .local p4, "removedProfiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/bluetooth/LocalBluetoothProfile;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p4}, Ljava/util/Collection;->clear()V

    .line 344
    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 345
    invoke-interface {p3}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    if-nez p1, :cond_1

    .line 384
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 351
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_4

    .line 352
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 356
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings/bluetooth/HeadsetProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 361
    :cond_4
    sget-object v0, Lcom/android/settings/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_5

    .line 363
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings/bluetooth/A2dpProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 367
    :cond_5
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    if-eqz v0, :cond_6

    .line 369
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings/bluetooth/OppProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 373
    :cond_6
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings/bluetooth/HidProfile;

    if-eqz v0, :cond_7

    .line 375
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings/bluetooth/HidProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings/bluetooth/HidProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 379
    :cond_7
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings/bluetooth/PanProfile;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings/bluetooth/PanProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings/bluetooth/PanProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
