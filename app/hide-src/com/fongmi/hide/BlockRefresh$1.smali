.class Lcom/fongmi/hide/BlockRefresh$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/fongmi/hide/BlockRefresh;
.field private status:Landroid/widget/TextView;
.field private text:Ljava/lang/String;

.method public constructor <init>(Lcom/fongmi/hide/BlockRefresh;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/fongmi/hide/BlockRefresh$1;->this$0:Lcom/fongmi/hide/BlockRefresh;
    iput-object p2, p0, Lcom/fongmi/hide/BlockRefresh$1;->status:Landroid/widget/TextView;
    iput-object p3, p0, Lcom/fongmi/hide/BlockRefresh$1;->text:Ljava/lang/String;
    return-void
.end method

.method public run()V
    .locals 2
    iget-object v0, p0, Lcom/fongmi/hide/BlockRefresh$1;->status:Landroid/widget/TextView;
    if-eqz v0, :cond_end
    iget-object v1, p0, Lcom/fongmi/hide/BlockRefresh$1;->text:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :cond_end
    return-void
.end method
