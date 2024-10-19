.class Lcom/android/settings/ApnSettingsCustomizations$ApnItem;
.super Ljava/lang/Object;
.source "ApnSettingsCustomizations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnSettingsCustomizations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnItem"
.end annotation


# instance fields
.field private mData:Ljava/lang/String;

.field private mMms:Ljava/lang/String;

.field private mSimvalue:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/ApnSettingsCustomizations;


# direct methods
.method public constructor <init>(Lcom/android/settings/ApnSettingsCustomizations;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    iput-object p1, p0, Lcom/android/settings/ApnSettingsCustomizations$ApnItem;->this$0:Lcom/android/settings/ApnSettingsCustomizations;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/settings/ApnSettingsCustomizations$ApnItem;->mSimvalue:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/android/settings/ApnSettingsCustomizations$ApnItem;->mData:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/android/settings/ApnSettingsCustomizations$ApnItem;->mMms:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/ApnSettingsCustomizations$ApnItem;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getMms()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/ApnSettingsCustomizations$ApnItem;->mMms:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/ApnSettingsCustomizations$ApnItem;->mData:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setMms(Ljava/lang/String;)V
    .locals 0
    .param p1, "mms"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/ApnSettingsCustomizations$ApnItem;->mMms:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setSimvalue(Ljava/lang/String;)V
    .locals 0
    .param p1, "Simvalue"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings/ApnSettingsCustomizations$ApnItem;->mSimvalue:Ljava/lang/String;

    .line 56
    return-void
.end method
