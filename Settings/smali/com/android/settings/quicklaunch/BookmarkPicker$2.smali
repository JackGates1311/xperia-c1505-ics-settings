.class Lcom/android/settings/quicklaunch/BookmarkPicker$2;
.super Ljava/lang/Object;
.source "BookmarkPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/quicklaunch/BookmarkPicker;->updateAdapterToUseNewLists(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/quicklaunch/BookmarkPicker;

.field final synthetic val$newAdapterList:Ljava/util/ArrayList;

.field final synthetic val$newResolveList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/settings/quicklaunch/BookmarkPicker$2;->this$0:Lcom/android/settings/quicklaunch/BookmarkPicker;

    iput-object p2, p0, Lcom/android/settings/quicklaunch/BookmarkPicker$2;->val$newAdapterList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/settings/quicklaunch/BookmarkPicker$2;->val$newResolveList:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings/quicklaunch/BookmarkPicker$2;->this$0:Lcom/android/settings/quicklaunch/BookmarkPicker;

    iget-object v1, p0, Lcom/android/settings/quicklaunch/BookmarkPicker$2;->this$0:Lcom/android/settings/quicklaunch/BookmarkPicker;

    iget-object v2, p0, Lcom/android/settings/quicklaunch/BookmarkPicker$2;->val$newAdapterList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/settings/quicklaunch/BookmarkPicker;->access$400(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/List;)Landroid/widget/SimpleAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->access$302(Lcom/android/settings/quicklaunch/BookmarkPicker;Landroid/widget/SimpleAdapter;)Landroid/widget/SimpleAdapter;

    .line 183
    iget-object v0, p0, Lcom/android/settings/quicklaunch/BookmarkPicker$2;->this$0:Lcom/android/settings/quicklaunch/BookmarkPicker;

    iget-object v1, p0, Lcom/android/settings/quicklaunch/BookmarkPicker$2;->val$newResolveList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->access$502(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/List;)Ljava/util/List;

    .line 184
    iget-object v0, p0, Lcom/android/settings/quicklaunch/BookmarkPicker$2;->this$0:Lcom/android/settings/quicklaunch/BookmarkPicker;

    iget-object v1, p0, Lcom/android/settings/quicklaunch/BookmarkPicker$2;->this$0:Lcom/android/settings/quicklaunch/BookmarkPicker;

    invoke-static {v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->access$300(Lcom/android/settings/quicklaunch/BookmarkPicker;)Landroid/widget/SimpleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    return-void
.end method
