.class public abstract Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;
.super Ljava/lang/Object;
.source "AbstractNodeVisitor.java"

# interfaces
.implements Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<",
        "TR;TP;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitArrayAccess(Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 246
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitArrayCreation(Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 348
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitArrayType(Lorg/checkerframework/dataflow/cfg/node/ArrayTypeNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ArrayTypeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ArrayTypeNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 354
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitAssertionError(Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/AssertionErrorNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 306
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitAssignment(Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 221
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitBitwiseAnd(Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 148
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitBitwiseComplement(Lorg/checkerframework/dataflow/cfg/node/BitwiseComplementNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/BitwiseComplementNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/BitwiseComplementNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitBitwiseOr(Lorg/checkerframework/dataflow/cfg/node/BitwiseOrNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/BitwiseOrNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/BitwiseOrNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 153
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitBitwiseXor(Lorg/checkerframework/dataflow/cfg/node/BitwiseXorNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/BitwiseXorNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/BitwiseXorNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 158
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitBooleanLiteral(Lorg/checkerframework/dataflow/cfg/node/BooleanLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/BooleanLiteralNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/BooleanLiteralNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 51
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitValueLiteral(Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitCase(Lorg/checkerframework/dataflow/cfg/node/CaseNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/CaseNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/CaseNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 322
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitCharacterLiteral(Lorg/checkerframework/dataflow/cfg/node/CharacterLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/CharacterLiteralNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/CharacterLiteralNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitValueLiteral(Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitClassDeclaration(Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ClassDeclarationNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 338
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitClassName(Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 364
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitConditionalAnd(Lorg/checkerframework/dataflow/cfg/node/ConditionalAndNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ConditionalAndNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ConditionalAndNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 201
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitConditionalNot(Lorg/checkerframework/dataflow/cfg/node/ConditionalNotNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ConditionalNotNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ConditionalNotNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 211
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitConditionalOr(Lorg/checkerframework/dataflow/cfg/node/ConditionalOrNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ConditionalOrNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ConditionalOrNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 206
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitDoubleLiteral(Lorg/checkerframework/dataflow/cfg/node/DoubleLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/DoubleLiteralNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/DoubleLiteralNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitValueLiteral(Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitEqualTo(Lorg/checkerframework/dataflow/cfg/node/EqualToNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/EqualToNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/EqualToNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 190
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitExplicitThisLiteral(Lorg/checkerframework/dataflow/cfg/node/ExplicitThisLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ExplicitThisLiteralNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ExplicitThisLiteralNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 260
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitThisLiteral(Lorg/checkerframework/dataflow/cfg/node/ThisLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitFieldAccess(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 236
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitFloatLiteral(Lorg/checkerframework/dataflow/cfg/node/FloatLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/FloatLiteralNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/FloatLiteralNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitValueLiteral(Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitFloatingDivision(Lorg/checkerframework/dataflow/cfg/node/FloatingDivisionNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/FloatingDivisionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/FloatingDivisionNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitFloatingRemainder(Lorg/checkerframework/dataflow/cfg/node/FloatingRemainderNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/FloatingRemainderNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/FloatingRemainderNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitGreaterThan(Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 180
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitGreaterThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitImplicitThisLiteral(Lorg/checkerframework/dataflow/cfg/node/ImplicitThisLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ImplicitThisLiteralNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ImplicitThisLiteralNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 255
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitThisLiteral(Lorg/checkerframework/dataflow/cfg/node/ThisLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitInstanceOf(Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/InstanceOfNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 295
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitIntegerDivision(Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitIntegerLiteral(Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/IntegerLiteralNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 31
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitValueLiteral(Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitIntegerRemainder(Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitLambdaResultExpression(Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 275
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitLeftShift(Lorg/checkerframework/dataflow/cfg/node/LeftShiftNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/LeftShiftNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/LeftShiftNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 133
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitLessThan(Lorg/checkerframework/dataflow/cfg/node/LessThanNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/LessThanNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/LessThanNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 170
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitLessThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 175
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitLocalVariable(Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 226
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitLongLiteral(Lorg/checkerframework/dataflow/cfg/node/LongLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/LongLiteralNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/LongLiteralNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 36
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitValueLiteral(Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitMarker(Lorg/checkerframework/dataflow/cfg/node/MarkerNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/MarkerNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/MarkerNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 381
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitMemberReference(Lorg/checkerframework/dataflow/cfg/node/FunctionalInterfaceNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/FunctionalInterfaceNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/FunctionalInterfaceNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 343
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitMethodAccess(Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 241
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 328
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNarrowingConversion(Lorg/checkerframework/dataflow/cfg/node/NarrowingConversionNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/NarrowingConversionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/NarrowingConversionNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 285
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public visitNotEqual(Lorg/checkerframework/dataflow/cfg/node/NotEqualNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/NotEqualNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/NotEqualNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 195
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNullChk(Lorg/checkerframework/dataflow/cfg/node/NullChkNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/NullChkNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/NullChkNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNullLiteral(Lorg/checkerframework/dataflow/cfg/node/NullLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/NullLiteralNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/NullLiteralNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitValueLiteral(Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNumericalAddition(Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNumericalMinus(Lorg/checkerframework/dataflow/cfg/node/NumericalMinusNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/NumericalMinusNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/NumericalMinusNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNumericalMultiplication(Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNumericalPlus(Lorg/checkerframework/dataflow/cfg/node/NumericalPlusNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/NumericalPlusNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/NumericalPlusNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 77
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitNumericalSubtraction(Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitObjectCreation(Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 333
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPackageName(Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 369
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitParameterizedType(Lorg/checkerframework/dataflow/cfg/node/ParameterizedTypeNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ParameterizedTypeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ParameterizedTypeNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 375
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPrimitiveType(Lorg/checkerframework/dataflow/cfg/node/PrimitiveTypeNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/PrimitiveTypeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/PrimitiveTypeNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 359
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitReturn(Lorg/checkerframework/dataflow/cfg/node/ReturnNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ReturnNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ReturnNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 270
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitShortLiteral(Lorg/checkerframework/dataflow/cfg/node/ShortLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ShortLiteralNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ShortLiteralNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 26
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitValueLiteral(Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitSignedRightShift(Lorg/checkerframework/dataflow/cfg/node/SignedRightShiftNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/SignedRightShiftNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/SignedRightShiftNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitStringConcatenate(Lorg/checkerframework/dataflow/cfg/node/StringConcatenateNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/StringConcatenateNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/StringConcatenateNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitStringConcatenateAssignment(Lorg/checkerframework/dataflow/cfg/node/StringConcatenateAssignmentNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/StringConcatenateAssignmentNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/StringConcatenateAssignmentNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 164
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitStringConversion(Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 280
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitStringLiteral(Lorg/checkerframework/dataflow/cfg/node/StringLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/StringLiteralNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/StringLiteralNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 61
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitValueLiteral(Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitSuper(Lorg/checkerframework/dataflow/cfg/node/SuperNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/SuperNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/SuperNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 265
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitSynchronized(Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 311
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTernaryExpression(Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 216
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitThisLiteral(Lorg/checkerframework/dataflow/cfg/node/ThisLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ThisLiteralNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ThisLiteralNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 250
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitThrow(Lorg/checkerframework/dataflow/cfg/node/ThrowNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ThrowNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ThrowNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 316
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeCast(Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/TypeCastNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 300
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitUnsignedRightShift(Lorg/checkerframework/dataflow/cfg/node/UnsignedRightShiftNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/UnsignedRightShiftNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/UnsignedRightShiftNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 143
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitValueLiteral(Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 20
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitVariableDeclaration(Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 231
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitWideningConversion(Lorg/checkerframework/dataflow/cfg/node/WideningConversionNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/WideningConversionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/WideningConversionNode;",
            "TP;)TR;"
        }
    .end annotation

    .line 290
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
