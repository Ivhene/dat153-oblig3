.class Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "FormatterAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatterTreeAnnotator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 0
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 66
    iput-object p1, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterTreeAnnotator;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    .line 67
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 68
    return-void
.end method


# virtual methods
.method public bridge synthetic visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 65
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterTreeAnnotator;->visitLiteral(Lcom/sun/source/tree/LiteralTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitLiteral(Lcom/sun/source/tree/LiteralTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/LiteralTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 72
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterTreeAnnotator;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->FORMAT:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->isAnnotatedInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "format":Ljava/lang/String;
    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->STRING_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_0

    .line 75
    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 76
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->CHAR_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_1

    .line 77
    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 82
    :try_start_0
    invoke-static {v0}, Lorg/checkerframework/checker/formatter/FormatUtil;->formatParameterCategories(Ljava/lang/String;)[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v1

    .line 83
    .local v1, "cs":[Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    iget-object v2, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterTreeAnnotator;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    .line 85
    invoke-virtual {v2, v1}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->categoriesToFormatAnnotation([Lorg/checkerframework/checker/formatter/qual/ConversionCategory;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 90
    .local v1, "anno":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_1

    .line 86
    .end local v1    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/util/IllegalFormatException;
    iget-object v2, p0, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory$FormatterTreeAnnotator;->this$0:Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/formatter/FormatterAnnotatedTypeFactory;->treeUtil:Lorg/checkerframework/checker/formatter/FormatterTreeUtil;

    .line 89
    invoke-virtual {v2, v1}, Lorg/checkerframework/checker/formatter/FormatterTreeUtil;->exceptionToInvalidFormatAnnotation(Ljava/util/IllegalFormatException;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    move-object v1, v2

    .line 91
    .local v1, "anno":Ljavax/lang/model/element/AnnotationMirror;
    :goto_1
    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 94
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
