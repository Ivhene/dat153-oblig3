.class public Lannotator/scanner/InitBlockScanner;
.super Lcom/sun/source/util/TreePathScanner;
.source "InitBlockScanner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/source/util/TreePathScanner<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private done:Z

.field private index:I

.field private final tree:Lcom/sun/source/tree/Tree;


# direct methods
.method private constructor <init>(Lcom/sun/source/tree/Tree;)V
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 36
    invoke-direct {p0}, Lcom/sun/source/util/TreePathScanner;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lannotator/scanner/InitBlockScanner;->index:I

    .line 33
    const/4 v1, 0x0

    iput-boolean v1, p0, Lannotator/scanner/InitBlockScanner;->done:Z

    .line 37
    iput v0, p0, Lannotator/scanner/InitBlockScanner;->index:I

    .line 38
    iput-boolean v1, p0, Lannotator/scanner/InitBlockScanner;->done:Z

    .line 39
    iput-object p1, p0, Lannotator/scanner/InitBlockScanner;->tree:Lcom/sun/source/tree/Tree;

    .line 40
    return-void
.end method

.method public static indexOfInitTree(Lcom/sun/source/util/TreePath;Z)I
    .locals 3
    .param p0, "path"    # Lcom/sun/source/util/TreePath;
    .param p1, "isStatic"    # Z

    .line 18
    nop

    .line 19
    invoke-static {p0, p1}, Lannotator/scanner/CommonScanner;->findEnclosingInitBlock(Lcom/sun/source/util/TreePath;Z)Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 21
    .local v0, "tree":Lcom/sun/source/tree/Tree;
    invoke-static {p0}, Lannotator/scanner/CommonScanner;->findEnclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/util/TreePath;

    move-result-object p0

    .line 22
    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    new-instance v1, Lannotator/scanner/InitBlockScanner;

    invoke-direct {v1, v0}, Lannotator/scanner/InitBlockScanner;-><init>(Lcom/sun/source/tree/Tree;)V

    .line 28
    .local v1, "bts":Lannotator/scanner/InitBlockScanner;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lannotator/scanner/InitBlockScanner;->scan(Lcom/sun/source/util/TreePath;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget v2, v1, Lannotator/scanner/InitBlockScanner;->index:I

    return v2

    .line 23
    .end local v1    # "bts":Lannotator/scanner/InitBlockScanner;
    :cond_1
    :goto_0
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method public bridge synthetic visitBlock(Lcom/sun/source/tree/BlockTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lannotator/scanner/InitBlockScanner;->visitBlock(Lcom/sun/source/tree/BlockTree;Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBlock(Lcom/sun/source/tree/BlockTree;Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/BlockTree;
    .param p2, "isStatic"    # Ljava/lang/Boolean;

    .line 45
    iget-boolean v0, p0, Lannotator/scanner/InitBlockScanner;->done:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1}, Lcom/sun/source/tree/BlockTree;->isStatic()Z

    move-result v2

    if-ne v0, v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->endpos:I

    if-ltz v0, :cond_0

    .line 47
    iget v0, p0, Lannotator/scanner/InitBlockScanner;->index:I

    add-int/2addr v0, v1

    iput v0, p0, Lannotator/scanner/InitBlockScanner;->index:I

    .line 49
    :cond_0
    iget-object v0, p0, Lannotator/scanner/InitBlockScanner;->tree:Lcom/sun/source/tree/Tree;

    if-ne v0, p1, :cond_1

    .line 50
    iput-boolean v1, p0, Lannotator/scanner/InitBlockScanner;->done:Z

    .line 52
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/TreePathScanner;->visitBlock(Lcom/sun/source/tree/BlockTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
