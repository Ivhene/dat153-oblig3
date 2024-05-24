.class public Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory$KeyLookupTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "PropertyKeyAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KeyLookupTreeAnnotator"
.end annotation


# instance fields
.field theAnnot:Ljavax/lang/model/element/AnnotationMirror;

.field final synthetic this$0:Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;Ljava/lang/Class;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;
    .param p2, "atf"    # Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p3, "annot":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iput-object p1, p0, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory$KeyLookupTreeAnnotator;->this$0:Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;

    .line 65
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 66
    invoke-static {p1}, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;->access$000(Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;)Ljavax/lang/model/util/Elements;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory$KeyLookupTreeAnnotator;->theAnnot:Ljavax/lang/model/element/AnnotationMirror;

    .line 67
    return-void
.end method


# virtual methods
.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory$KeyLookupTreeAnnotator;->visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/BinaryTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 86
    iget-object v0, p0, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory$KeyLookupTreeAnnotator;->theAnnot:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->removeAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory$KeyLookupTreeAnnotator;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/CompoundAssignmentTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 93
    iget-object v0, p0, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory$KeyLookupTreeAnnotator;->theAnnot:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->removeAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory$KeyLookupTreeAnnotator;->visitLiteral(Lcom/sun/source/tree/LiteralTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitLiteral(Lcom/sun/source/tree/LiteralTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/LiteralTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 71
    iget-object v0, p0, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory$KeyLookupTreeAnnotator;->theAnnot:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->isAnnotatedInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->STRING_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory$KeyLookupTreeAnnotator;->this$0:Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;

    .line 73
    invoke-static {v0}, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;->access$100(Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;->access$200(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory$KeyLookupTreeAnnotator;->theAnnot:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 80
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
