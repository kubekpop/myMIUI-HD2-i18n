.class Lcom/android/contacts/TwelveKeyDialer$8;
.super Ljava/lang/Object;
.source "TwelveKeyDialer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/TwelveKeyDialer;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/TwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/android/contacts/TwelveKeyDialer;)V
    .locals 0
    .parameter

    .prologue
    .line 1584
    iput-object p1, p0, Lcom/android/contacts/TwelveKeyDialer$8;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$8;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/contacts/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/TwelveKeyDialer$8;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/TwelveKeyDialer;->mFilterState:Lcom/android/contacts/TwelveKeyDialer$FilterState;
    invoke-static {v2}, Lcom/android/contacts/TwelveKeyDialer;->access$900(Lcom/android/contacts/TwelveKeyDialer;)Lcom/android/contacts/TwelveKeyDialer$FilterState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/TwelveKeyDialer$FilterState;->getFilter()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1588
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$8;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;
    invoke-static {v0}, Lcom/android/contacts/TwelveKeyDialer;->access$500(Lcom/android/contacts/TwelveKeyDialer;)Landroid/widget/EditableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 1589
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$8;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/contacts/TwelveKeyDialer;->startQuery()V

    .line 1590
    return-void
.end method
