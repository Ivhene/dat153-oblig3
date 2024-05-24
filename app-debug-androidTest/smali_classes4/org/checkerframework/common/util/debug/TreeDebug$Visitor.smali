.class public Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;
.super Lcom/sun/source/util/TreePathScanner;
.source "TreeDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/util/debug/TreeDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Visitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/source/util/TreePathScanner<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final buf:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/sun/source/util/TreePathScanner;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;->buf:Ljava/lang/StringBuilder;

    .line 54
    return-void
.end method

.method private final insert(Ljava/lang/Object;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v0, p0, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    return-void
.end method


# virtual methods
.method public bridge synthetic scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/Tree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 60
    invoke-virtual {p0}, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .local v0, "tp":Lcom/sun/source/util/TreePath;
    :goto_0
    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;->buf:Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    goto :goto_0

    .line 67
    .end local v0    # "tp":Lcom/sun/source/util/TreePath;
    :cond_0
    if-nez p1, :cond_1

    .line 68
    iget-object v0, p0, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;->buf:Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 70
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;->buf:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    :goto_1
    iget-object v0, p0, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;->buf:Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/checkerframework/common/util/debug/TreeDebug;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/TreePathScanner;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;->buf:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;->visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/IdentifierTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 96
    invoke-direct {p0, p1}, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;->insert(Ljava/lang/Object;)V

    .line 97
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/TreePathScanner;->visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;->visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/LiteralTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 116
    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;->insert(Ljava/lang/Object;)V

    .line 117
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/TreePathScanner;->visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/MemberSelectTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getIdentifier()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;->insert(Ljava/lang/Object;)V

    .line 103
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/TreePathScanner;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/NewArrayTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 108
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->annotations:Lcom/sun/tools/javac/util/List;

    invoke-direct {p0, v0}, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;->insert(Ljava/lang/Object;)V

    .line 109
    const-string v0, "|"

    invoke-direct {p0, v0}, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;->insert(Ljava/lang/Object;)V

    .line 110
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->dimAnnotations:Lcom/sun/tools/javac/util/List;

    invoke-direct {p0, v0}, Lorg/checkerframework/common/util/debug/TreeDebug$Visitor;->insert(Ljava/lang/Object;)V

    .line 111
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/TreePathScanner;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
