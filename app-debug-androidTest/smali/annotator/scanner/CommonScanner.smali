.class public Lannotator/scanner/CommonScanner;
.super Lcom/sun/source/util/TreePathScanner;
.source "CommonScanner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/source/util/TreePathScanner<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/sun/source/util/TreePathScanner;-><init>()V

    return-void
.end method

.method public static findCountingContext(Lcom/sun/source/util/TreePath;)Lcom/sun/source/util/TreePath;
    .locals 2
    .param p0, "path"    # Lcom/sun/source/util/TreePath;

    .line 30
    nop

    :goto_0
    if-eqz p0, :cond_2

    .line 31
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_1

    .line 32
    invoke-static {p0}, Lannotator/scanner/CommonScanner;->isFieldInit(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    invoke-static {p0}, Lannotator/scanner/CommonScanner;->isInitBlock(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object p0

    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    return-object p0

    .line 38
    :cond_2
    return-object p0
.end method

.method public static findEnclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/util/TreePath;
    .locals 2
    .param p0, "path"    # Lcom/sun/source/util/TreePath;

    .line 44
    nop

    :cond_0
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-static {v0}, Lannotator/scanner/CommonScanner;->hasClassKind(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    return-object p0

    .line 47
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object p0

    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public static findEnclosingFieldInit(Lcom/sun/source/util/TreePath;)Lcom/sun/source/util/TreePath;
    .locals 1
    .param p0, "path"    # Lcom/sun/source/util/TreePath;

    .line 76
    nop

    :cond_0
    invoke-static {p0}, Lannotator/scanner/CommonScanner;->isFieldInit(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object p0

    .line 78
    if-nez p0, :cond_0

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_1
    return-object p0
.end method

.method public static findEnclosingInitBlock(Lcom/sun/source/util/TreePath;Z)Lcom/sun/source/util/TreePath;
    .locals 1
    .param p0, "path"    # Lcom/sun/source/util/TreePath;
    .param p1, "isStatic"    # Z

    .line 100
    nop

    :cond_0
    invoke-static {p0, p1}, Lannotator/scanner/CommonScanner;->isInitBlock(Lcom/sun/source/util/TreePath;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object p0

    .line 102
    if-nez p0, :cond_0

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_1
    return-object p0
.end method

.method public static findEnclosingInstanceInit(Lcom/sun/source/util/TreePath;)Lcom/sun/source/util/TreePath;
    .locals 1
    .param p0, "path"    # Lcom/sun/source/util/TreePath;

    .line 128
    nop

    :cond_0
    invoke-static {p0}, Lannotator/scanner/CommonScanner;->isInstanceInit(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object p0

    .line 130
    if-nez p0, :cond_0

    .line 131
    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_1
    return-object p0
.end method

.method public static findEnclosingMethod(Lcom/sun/source/util/TreePath;)Lcom/sun/source/util/TreePath;
    .locals 2
    .param p0, "path"    # Lcom/sun/source/util/TreePath;

    .line 58
    nop

    :cond_0
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object p0

    .line 60
    if-nez p0, :cond_0

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_1
    return-object p0
.end method

.method public static findEnclosingStaticInit(Lcom/sun/source/util/TreePath;)Lcom/sun/source/util/TreePath;
    .locals 1
    .param p0, "path"    # Lcom/sun/source/util/TreePath;

    .line 114
    nop

    :cond_0
    invoke-static {p0}, Lannotator/scanner/CommonScanner;->isStaticInit(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object p0

    .line 116
    if-nez p0, :cond_0

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_1
    return-object p0
.end method

.method public static hasClassKind(Lcom/sun/source/tree/Tree;)Z
    .locals 2
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;

    .line 15
    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    .line 19
    .local v0, "kind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->INTERFACE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ENUM:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ANNOTATION_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static isFieldInit(Lcom/sun/source/util/TreePath;)Z
    .locals 2
    .param p0, "path"    # Lcom/sun/source/util/TreePath;

    .line 70
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-static {v0}, Lannotator/scanner/CommonScanner;->hasClassKind(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0
.end method

.method public static isInitBlock(Lcom/sun/source/util/TreePath;)Z
    .locals 2
    .param p0, "path"    # Lcom/sun/source/util/TreePath;

    .line 93
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-static {v0}, Lannotator/scanner/CommonScanner;->hasClassKind(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->BLOCK:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0
.end method

.method public static isInitBlock(Lcom/sun/source/util/TreePath;Z)Z
    .locals 1
    .param p0, "path"    # Lcom/sun/source/util/TreePath;
    .param p1, "isStatic"    # Z

    .line 88
    invoke-static {p0}, Lannotator/scanner/CommonScanner;->isInitBlock(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/BlockTree;

    invoke-interface {v0}, Lcom/sun/source/tree/BlockTree;->isStatic()Z

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0
.end method

.method public static isInstanceInit(Lcom/sun/source/util/TreePath;)Z
    .locals 1
    .param p0, "path"    # Lcom/sun/source/util/TreePath;

    .line 124
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lannotator/scanner/CommonScanner;->isInitBlock(Lcom/sun/source/util/TreePath;Z)Z

    move-result v0

    return v0
.end method

.method public static isStaticInit(Lcom/sun/source/util/TreePath;)Z
    .locals 1
    .param p0, "path"    # Lcom/sun/source/util/TreePath;

    .line 110
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lannotator/scanner/CommonScanner;->isInitBlock(Lcom/sun/source/util/TreePath;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lannotator/scanner/CommonScanner;->visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0
    .param p1, "node"    # Lcom/sun/source/tree/ClassTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 141
    return-object p2
.end method
