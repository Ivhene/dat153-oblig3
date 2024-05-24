.class final Lannotator/find/ASTPathCriterion$2;
.super Lcom/sun/source/util/SimpleTreeVisitor;
.source "ASTPathCriterion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lannotator/find/ASTPathCriterion;->arrayDepth(Lcom/sun/source/tree/Tree;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/source/util/SimpleTreeVisitor<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 813
    invoke-direct {p0}, Lcom/sun/source/util/SimpleTreeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p1, "t"    # Lcom/sun/source/tree/Tree;
    .param p2, "i"    # Ljava/lang/Integer;

    .line 820
    return-object p2
.end method

.method public bridge synthetic defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 813
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lannotator/find/ASTPathCriterion$2;->defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p1, "t"    # Lcom/sun/source/tree/ArrayTypeTree;
    .param p2, "i"    # Ljava/lang/Integer;

    .line 816
    invoke-interface {p1}, Lcom/sun/source/tree/ArrayTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/sun/source/tree/Tree;->accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 813
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lannotator/find/ASTPathCriterion$2;->visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
