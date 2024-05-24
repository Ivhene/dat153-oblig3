.class public Lorg/checkerframework/framework/util/Heuristics$Matcher;
.super Lcom/sun/source/util/SimpleTreeVisitor;
.source "Heuristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/Heuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Matcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/source/util/SimpleTreeVisitor<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/sun/source/util/SimpleTreeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method protected defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/Tree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/Heuristics$Matcher;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public match(Lcom/sun/source/util/TreePath;)Z
    .locals 2
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 80
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/framework/util/Heuristics$Matcher;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public visitParenthesized(Lcom/sun/source/tree/ParenthesizedTree;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/ParenthesizedTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 76
    invoke-interface {p1}, Lcom/sun/source/tree/ParenthesizedTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/util/Heuristics$Matcher;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic visitParenthesized(Lcom/sun/source/tree/ParenthesizedTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/Heuristics$Matcher;->visitParenthesized(Lcom/sun/source/tree/ParenthesizedTree;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
