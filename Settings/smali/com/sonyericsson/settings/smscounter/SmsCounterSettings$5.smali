.class Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$5;
.super Ljava/lang/Object;
.source "SmsCounterSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

.field final synthetic val$cycleDayPicker:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;Landroid/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    iput-object p2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$5;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 569
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$5;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 570
    .local v0, "cycleDay":I
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1400(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 571
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "sms_counter_startDay"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 573
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 577
    return-void
.end method
