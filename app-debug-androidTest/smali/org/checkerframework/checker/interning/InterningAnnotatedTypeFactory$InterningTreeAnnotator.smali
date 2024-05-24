.class Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "InterningAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterningTreeAnnotator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;


# direct methods
.method constructor <init>(Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;)V
    .locals 0
    .param p2, "atypeFactory"    # Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;

    .line 153
    iput-object p1, p0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningTreeAnnotator;->this$0:Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;

    .line 154
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 155
    return-void
.end method


# virtual methods
.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 151
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningTreeAnnotator;->visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/BinaryTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 159
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isCompileTimeString(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningTreeAnnotator;->this$0:Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->INTERNED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_1

    .line 161
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isStringConcatenation(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningTreeAnnotator;->this$0:Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->TOP:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_1

    .line 163
    :cond_1
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 164
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_3

    .line 165
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->NOT_EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningTreeAnnotator;->this$0:Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->TOP:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_1

    .line 166
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningTreeAnnotator;->this$0:Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->INTERNED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 170
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 151
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningTreeAnnotator;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/CompoundAssignmentTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 177
    iget-object v0, p0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningTreeAnnotator;->this$0:Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->TOP:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 178
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 151
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningTreeAnnotator;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/TypeCastTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 183
    invoke-interface {p1}, Lcom/sun/source/tree/TypeCastTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory$InterningTreeAnnotator;->this$0:Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/interning/InterningAnnotatedTypeFactory;->INTERNED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 186
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
