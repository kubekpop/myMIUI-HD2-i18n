.class Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter$1;
.super Ljava/lang/Object;
.source "ThemeResourceDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;


# direct methods
.method constructor <init>(Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter$1;->this$1:Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 479
    .local v1, pos:I
    iget-object v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter$1;->this$1:Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;

    #getter for: Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mOrderComponentFlag:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->access$300(Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 480
    const v2, 0x7f060006

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 481
    .local v0, check:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 482
    iget-object v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter$1;->this$1:Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;

    iget-object v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter$1;->this$1:Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;

    #getter for: Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mOrderComponentFlag:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->access$300(Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->access$474(Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;J)J

    .line 486
    :goto_0
    iget-object v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter$1;->this$1:Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;

    invoke-virtual {v2}, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->notifyDataSetInvalidated()V

    .line 487
    iget-object v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter$1;->this$1:Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;

    iget-object v2, v2, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    #calls: Lcom/android/thememanager/ThemeResourceDetailActivity;->updateComponentTitle()V
    invoke-static {v2}, Lcom/android/thememanager/ThemeResourceDetailActivity;->access$500(Lcom/android/thememanager/ThemeResourceDetailActivity;)V

    .line 489
    .end local v0           #check:Landroid/widget/ImageView;
    :cond_0
    return-void

    .line 484
    .restart local v0       #check:Landroid/widget/ImageView;
    :cond_1
    iget-object v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter$1;->this$1:Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;

    iget-object v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter$1;->this$1:Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;

    #getter for: Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mOrderComponentFlag:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->access$300(Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->access$478(Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;J)J

    goto :goto_0
.end method
