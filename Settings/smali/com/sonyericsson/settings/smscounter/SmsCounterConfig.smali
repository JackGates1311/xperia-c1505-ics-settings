.class public Lcom/sonyericsson/settings/smscounter/SmsCounterConfig;
.super Ljava/lang/Object;
.source "SmsCounterConfig.java"


# static fields
.field public static final SENT_URI:Landroid/net/Uri;

.field public static final SMS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "content://sms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/settings/smscounter/SmsCounterConfig;->SENT_URI:Landroid/net/Uri;

    .line 46
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/settings/smscounter/SmsCounterConfig;->SMS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
