.class Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory$I18nTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "I18nAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "I18nTreeAnnotator"
.end annotation


# instance fields
.field private final LOCALIZED:Ljavax/lang/model/element/AnnotationMirror;

.field final synthetic this$0:Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 1
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 45
    iput-object p1, p0, Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory$I18nTreeAnnotator;->this$0:Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory;

    .line 46
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 42
    nop

    .line 43
    invoke-static {p1}, Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory;->access$000(Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory;)Ljavax/lang/model/util/Elements;

    move-result-object p1

    const-class v0, Lorg/checkerframework/checker/i18n/qual/Localized;

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object p1

    iput-object p1, p0, Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory$I18nTreeAnnotator;->LOCALIZED:Ljavax/lang/model/element/AnnotationMirror;

    .line 47
    return-void
.end method


# virtual methods
.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory$I18nTreeAnnotator;->visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/BinaryTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 51
    iget-object v0, p0, Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory$I18nTreeAnnotator;->LOCALIZED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->removeAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory$I18nTreeAnnotator;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/CompoundAssignmentTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 57
    iget-object v0, p0, Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory$I18nTreeAnnotator;->LOCALIZED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->removeAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory$I18nTreeAnnotator;->visitLiteral(Lcom/sun/source/tree/LiteralTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitLiteral(Lcom/sun/source/tree/LiteralTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/LiteralTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 63
    iget-object v0, p0, Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory$I18nTreeAnnotator;->LOCALIZED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->isAnnotatedInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->STRING_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory$I18nTreeAnnotator;->LOCALIZED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 68
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
