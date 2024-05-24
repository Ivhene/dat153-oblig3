.class public Lorg/checkerframework/framework/util/dependenttypes/DependentTypesTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "DependentTypesTreeAnnotator.java"


# instance fields
.field private final helper:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;)V
    .locals 0
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "helper"    # Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    .line 26
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 27
    iput-object p2, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesTreeAnnotator;->helper:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesTreeAnnotator;->visitClass(Lcom/sun/source/tree/ClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitClass(Lcom/sun/source/tree/ClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/ClassTree;
    .param p2, "annotatedTypeMirror"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 32
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/ClassTree;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 33
    .local v0, "ele":Ljavax/lang/model/element/Element;
    iget-object v1, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesTreeAnnotator;->helper:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    invoke-virtual {v1, p1, p2, v0}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeClass(Lcom/sun/source/tree/ClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V

    .line 34
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1
.end method

.method public bridge synthetic visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesTreeAnnotator;->visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/IdentifierTree;
    .param p2, "annotatedTypeMirror"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 64
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 65
    .local v0, "ele":Ljavax/lang/model/element/Element;
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;

    if-eq v1, v2, :cond_0

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->ENUM_CONSTANT:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_1

    .line 66
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesTreeAnnotator;->helper:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    invoke-virtual {v1, p1, p2, v0}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeVariable(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V

    .line 68
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1
.end method

.method public bridge synthetic visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesTreeAnnotator;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/MemberSelectTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 73
    iget-object v0, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesTreeAnnotator;->helper:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeFieldAccess(Lcom/sun/source/tree/MemberSelectTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 74
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesTreeAnnotator;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewArray(Lcom/sun/source/tree/NewArrayTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/NewArrayTree;
    .param p2, "annotatedType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 39
    iget-object v0, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesTreeAnnotator;->helper:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeExpression(Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 40
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesTreeAnnotator;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewClass(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "annotatedType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 45
    iget-object v0, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesTreeAnnotator;->helper:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeExpression(Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 46
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesTreeAnnotator;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/TypeCastTree;
    .param p2, "annotatedType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 51
    iget-object v0, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesTreeAnnotator;->helper:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeExpression(Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 52
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesTreeAnnotator;->visitVariable(Lcom/sun/source/tree/VariableTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Lcom/sun/source/tree/VariableTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/VariableTree;
    .param p2, "annotatedTypeMirror"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 57
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/VariableTree;)Ljavax/lang/model/element/VariableElement;

    move-result-object v0

    .line 58
    .local v0, "ele":Ljavax/lang/model/element/Element;
    iget-object v1, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesTreeAnnotator;->helper:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    invoke-virtual {v1, p1, p2, v0}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeVariable(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)V

    .line 59
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1
.end method
