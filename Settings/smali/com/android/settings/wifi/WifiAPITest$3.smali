.class Lcom/android/settings/wifi/WifiAPITest$3;
.super Ljava/lang/Object;
.source "WifiAPITest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiAPITest;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiAPITest;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/settings/wifi/WifiAPITest$3;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiAPITest$3;->val$input:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/settings/wifi/WifiAPITest$3;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 142
    .local v0, "value":Landroid/text/Editable;
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiAPITest$3;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiAPITest;->access$002(Lcom/android/settings/wifi/WifiAPITest;I)I

    .line 143
    iget-object v1, p0, Lcom/android/settings/wifi/WifiAPITest$3;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiAPITest;->access$100(Lcom/android/settings/wifi/WifiAPITest;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPITest$3;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiAPITest;->access$000(Lcom/android/settings/wifi/WifiAPITest;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v1

    goto :goto_0
.end method
