.class public Lannotator/scanner/AnonymousClassScanner;
.super Lcom/sun/source/util/TreePathScanner;
.source "AnonymousClassScanner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/source/util/TreePathScanner<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private anonclass:Lcom/sun/source/tree/Tree;

.field private found:Z

.field private index:I


# direct methods
.method private constructor <init>(Lcom/sun/source/tree/Tree;)V
    .locals 1
    .param p1, "anonclass"    # Lcom/sun/source/tree/Tree;

    .line 60
    invoke-direct {p0}, Lcom/sun/source/util/TreePathScanner;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lannotator/scanner/AnonymousClassScanner;->index:I

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lannotator/scanner/AnonymousClassScanner;->found:Z

    .line 63
    iput-object p1, p0, Lannotator/scanner/AnonymousClassScanner;->anonclass:Lcom/sun/source/tree/Tree;

    .line 64
    return-void
.end method

.method public static indexOfClassTree(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)I
    .locals 4
    .param p0, "path"    # Lcom/sun/source/util/TreePath;
    .param p1, "anonclass"    # Lcom/sun/source/tree/Tree;

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "classesFound":I
    const/4 v1, 0x0

    .line 31
    .local v1, "anonclassFound":Z
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    .line 32
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 33
    const/4 v1, 0x1

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object p0

    .line 36
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-static {v2}, Lannotator/scanner/CommonScanner;->hasClassKind(Lcom/sun/source/tree/Tree;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_2
    new-instance v2, Lannotator/scanner/AnonymousClassScanner;

    invoke-direct {v2, p1}, Lannotator/scanner/AnonymousClassScanner;-><init>(Lcom/sun/source/tree/Tree;)V

    .line 41
    .local v2, "lvts":Lannotator/scanner/AnonymousClassScanner;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lannotator/scanner/AnonymousClassScanner;->scan(Lcom/sun/source/util/TreePath;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-boolean v3, v2, Lannotator/scanner/AnonymousClassScanner;->found:Z

    if-eqz v3, :cond_3

    .line 43
    iget v3, v2, Lannotator/scanner/AnonymousClassScanner;->index:I

    return v3

    .line 45
    :cond_3
    const/4 v3, -0x1

    return v3
.end method


# virtual methods
.method public bridge synthetic visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lannotator/scanner/AnonymousClassScanner;->visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/ClassTree;
    .param p2, "level"    # Ljava/lang/Integer;

    .line 73
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 74
    iget-boolean v0, p0, Lannotator/scanner/AnonymousClassScanner;->found:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lannotator/scanner/AnonymousClassScanner;->anonclass:Lcom/sun/source/tree/Tree;

    invoke-static {v0}, Lannotator/scanner/CommonScanner;->hasClassKind(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lannotator/scanner/AnonymousClassScanner;->anonclass:Lcom/sun/source/tree/Tree;

    if-ne v0, p1, :cond_0

    .line 76
    iput-boolean v1, p0, Lannotator/scanner/AnonymousClassScanner;->found:Z

    goto :goto_0

    .line 77
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget v0, p0, Lannotator/scanner/AnonymousClassScanner;->index:I

    add-int/2addr v0, v1

    iput v0, p0, Lannotator/scanner/AnonymousClassScanner;->index:I

    .line 82
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/sun/source/util/TreePathScanner;->visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lannotator/scanner/AnonymousClassScanner;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 4
    .param p1, "node"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "level"    # Ljava/lang/Integer;

    .line 90
    iget-boolean v0, p0, Lannotator/scanner/AnonymousClassScanner;->found:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lannotator/scanner/AnonymousClassScanner;->anonclass:Lcom/sun/source/tree/Tree;

    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v3, :cond_2

    .line 91
    iget-object v0, p0, Lannotator/scanner/AnonymousClassScanner;->anonclass:Lcom/sun/source/tree/Tree;

    if-ne v0, p1, :cond_0

    .line 92
    iput-boolean v2, p0, Lannotator/scanner/AnonymousClassScanner;->found:Z

    goto :goto_0

    .line 93
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getClassBody()Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    iget v0, p0, Lannotator/scanner/AnonymousClassScanner;->index:I

    add-int/2addr v0, v2

    iput v0, p0, Lannotator/scanner/AnonymousClassScanner;->index:I

    goto :goto_0

    .line 98
    :cond_1
    return-object v1

    .line 101
    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/sun/source/util/TreePathScanner;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-object v1
.end method
