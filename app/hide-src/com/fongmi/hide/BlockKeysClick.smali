.class public Lcom/fongmi/hide/BlockKeysClick;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;

.field private activity:Landroid/content/Context;
.field private status:Landroid/widget/TextView;

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/fongmi/hide/BlockKeysClick;->activity:Landroid/content/Context;
    iput-object p2, p0, Lcom/fongmi/hide/BlockKeysClick;->status:Landroid/widget/TextView;
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    iget-object v0, p0, Lcom/fongmi/hide/BlockKeysClick;->activity:Landroid/content/Context;
    iget-object v1, p0, Lcom/fongmi/hide/BlockKeysClick;->status:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/fongmi/hide/BlockKeyEditor;->show(Landroid/content/Context;Landroid/widget/TextView;)V
    return-void
.end method
