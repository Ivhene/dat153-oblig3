.class public Lorg/checkerframework/javacutil/AnnotationBuilder;
.super Ljava/lang/Object;
.source "AnnotationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationValue;,
        Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final annotationElt:Ljavax/lang/model/element/TypeElement;

.field private final annotationType:Ljavax/lang/model/type/DeclaredType;

.field private final elementValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;"
        }
    .end annotation
.end field

.field private final elements:Ljavax/lang/model/util/Elements;

.field private final types:Ljavax/lang/model/util/Types;

.field private wasBuilt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 54
    return-void
.end method

.method public constructor <init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p2, "name"    # Ljava/lang/CharSequence;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->wasBuilt:Z

    .line 88
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->elements:Ljavax/lang/model/util/Elements;

    .line 89
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->types:Ljavax/lang/model/util/Types;

    .line 90
    invoke-interface {v0, p2}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->annotationElt:Ljavax/lang/model/element/TypeElement;

    .line 91
    if-eqz v0, :cond_1

    .line 94
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->ANNOTATION_TYPE:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_0

    .line 95
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    iput-object v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->annotationType:Ljavax/lang/model/type/DeclaredType;

    .line 96
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->elementValues:Ljava/util/Map;

    .line 97
    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 92
    :cond_1
    new-instance v0, Lorg/checkerframework/javacutil/UserError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find annotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Is it on the classpath?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)V
    .locals 1
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/annotation/processing/ProcessingEnvironment;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p2, "anno":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 2
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p2, "annotation"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->wasBuilt:Z

    .line 107
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->elements:Ljavax/lang/model/util/Elements;

    .line 108
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->types:Ljavax/lang/model/util/Types;

    .line 110
    invoke-interface {p2}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->annotationType:Ljavax/lang/model/type/DeclaredType;

    .line 111
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    iput-object v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->annotationElt:Ljavax/lang/model/element/TypeElement;

    .line 113
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->elementValues:Ljava/util/Map;

    .line 115
    invoke-interface {p2}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 116
    return-void
.end method

.method private assertNotBuilt()V
    .locals 2

    .line 184
    iget-boolean v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->wasBuilt:Z

    if-nez v0, :cond_0

    .line 187
    return-void

    .line 185
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "AnnotationBuilder: error: type was already built"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkSubtype(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)V
    .locals 5
    .param p1, "expected"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "givenValue"    # Ljava/lang/Object;

    .line 503
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->types:Ljavax/lang/model/util/Types;

    move-object v1, p1

    check-cast v1, Ljavax/lang/model/type/PrimitiveType;

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->boxedClass(Ljavax/lang/model/type/PrimitiveType;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    .line 507
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_1

    .line 508
    invoke-static {p1}, Lorg/checkerframework/javacutil/TypesUtils;->isClass(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljavax/lang/model/type/TypeMirror;

    if-eqz v0, :cond_1

    .line 510
    return-void

    .line 516
    :cond_1
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_2

    move-object v0, p1

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    .line 517
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->ANNOTATION_TYPE:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_2

    instance-of v0, p2, Ljavax/lang/model/element/AnnotationMirror;

    if-eqz v0, :cond_2

    .line 519
    move-object v0, p2

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    invoke-interface {v0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    .line 520
    .local v0, "found":Ljavax/lang/model/type/TypeMirror;
    move-object v1, p1

    check-cast v1, Ljavax/lang/model/type/DeclaredType;

    .line 522
    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljavax/lang/model/type/DeclaredType;

    .line 523
    invoke-interface {v2}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "isSubtype":Z
    goto :goto_0

    .line 524
    .end local v0    # "found":Ljavax/lang/model/type/TypeMirror;
    .end local v1    # "isSubtype":Z
    :cond_2
    instance-of v0, p2, Ljavax/lang/model/element/AnnotationMirror;

    if-eqz v0, :cond_3

    .line 525
    move-object v0, p2

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    invoke-interface {v0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    .line 527
    .restart local v0    # "found":Ljavax/lang/model/type/TypeMirror;
    const/4 v1, 0x0

    .restart local v1    # "isSubtype":Z
    goto :goto_0

    .line 528
    .end local v0    # "found":Ljavax/lang/model/type/TypeMirror;
    .end local v1    # "isSubtype":Z
    :cond_3
    instance-of v0, p2, Ljavax/lang/model/element/VariableElement;

    if-eqz v0, :cond_5

    .line 529
    move-object v0, p2

    check-cast v0, Ljavax/lang/model/element/VariableElement;

    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 530
    .restart local v0    # "found":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_4

    .line 531
    iget-object v1, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v1, v0}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v3, p1}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    .restart local v1    # "isSubtype":Z
    goto :goto_0

    .line 533
    .end local v1    # "isSubtype":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isSubtype":Z
    goto :goto_0

    .line 536
    .end local v0    # "found":Ljavax/lang/model/type/TypeMirror;
    .end local v1    # "isSubtype":Z
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 538
    iget-object v1, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->elements:Ljavax/lang/model/util/Elements;

    invoke-interface {v1, v0}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 539
    .local v1, "found":Ljavax/lang/model/type/TypeMirror;
    iget-object v2, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v2, v1}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v4, p1}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    move-object v0, v1

    move v1, v2

    .line 541
    .local v0, "found":Ljavax/lang/model/type/TypeMirror;
    .local v1, "isSubtype":Z
    :goto_0
    if-nez v1, :cond_6

    .line 544
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 547
    :cond_6
    if-eqz v1, :cond_7

    .line 555
    return-void

    .line 548
    :cond_7
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "given value differs from expected; found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 537
    .end local v1    # "isSubtype":Z
    .local v0, "name":Ljava/lang/String;
    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "@AssumeAssertion(nullness): assumption"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static createValue(Ljava/lang/Object;)Ljavax/lang/model/element/AnnotationValue;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 564
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationValue;

    invoke-direct {v0, p0}, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationValue;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private findEnumElement(Ljava/lang/Enum;)Ljavax/lang/model/element/VariableElement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljavax/lang/model/element/VariableElement;"
        }
    .end annotation

    .line 471
    .local p1, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "enumClass":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 473
    iget-object v1, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->elements:Ljavax/lang/model/util/Elements;

    invoke-interface {v1, v0}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    .line 474
    .local v1, "enumClassElt":Ljavax/lang/model/element/TypeElement;
    if-eqz v1, :cond_2

    .line 475
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/Element;

    .line 476
    .local v3, "enumElt":Ljavax/lang/model/element/Element;
    invoke-interface {v3}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 477
    move-object v2, v3

    check-cast v2, Ljavax/lang/model/element/VariableElement;

    return-object v2

    .line 479
    .end local v3    # "enumElt":Ljavax/lang/model/element/Element;
    :cond_0
    goto :goto_0

    .line 480
    :cond_1
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    const-string v3, "cannot be here"

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 474
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 472
    .end local v1    # "enumClassElt":Ljavax/lang/model/element/TypeElement;
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "@AssumeAssertion(nullness): assumption"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 5
    .param p0, "elements"    # Ljavax/lang/model/util/Elements;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Elements;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 137
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 139
    invoke-static {p0, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromName(Ljavax/lang/model/util/Elements;Ljava/lang/CharSequence;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 140
    .local v1, "res":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v1, :cond_0

    .line 146
    return-object v1

    .line 141
    :cond_0
    new-instance v2, Lorg/checkerframework/javacutil/UserError;

    const-string v3, "AnnotationBuilder: error: fromClass can\'t load Class %s%nensure the class is on the compilation classpath"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 138
    .end local v1    # "res":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "@AssumeAssertion(nullness): assumption"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static fromName(Ljavax/lang/model/util/Elements;Ljava/lang/CharSequence;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p0, "elements"    # Ljavax/lang/model/util/Elements;
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 163
    invoke-interface {p0, p1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 164
    .local v0, "annoElt":Ljavax/lang/model/element/TypeElement;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 165
    return-object v1

    .line 167
    :cond_0
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/element/ElementKind;->ANNOTATION_TYPE:Ljavax/lang/model/element/ElementKind;

    if-ne v2, v3, :cond_2

    .line 171
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/DeclaredType;

    .line 172
    .local v2, "annoType":Ljavax/lang/model/type/DeclaredType;
    if-nez v2, :cond_1

    .line 173
    return-object v1

    .line 175
    :cond_1
    new-instance v1, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;

    .line 176
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;-><init>(Ljavax/lang/model/type/DeclaredType;Ljava/util/Map;)V

    .line 177
    .local v1, "result":Ljavax/lang/model/element/AnnotationMirror;
    return-object v1

    .line 168
    .end local v1    # "result":Ljavax/lang/model/element/AnnotationMirror;
    .end local v2    # "annoType":Ljavax/lang/model/type/DeclaredType;
    :cond_2
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not an annotation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getErasedOrBoxedType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;
    .locals 2
    .param p1, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 325
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->types:Ljavax/lang/model/util/Types;

    move-object v1, p1

    check-cast v1, Ljavax/lang/model/type/PrimitiveType;

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->boxedClass(Ljavax/lang/model/type/PrimitiveType;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 325
    :goto_0
    return-object v0
.end method

.method private setValue(Ljava/lang/CharSequence;Ljava/lang/Object;)Lorg/checkerframework/javacutil/AnnotationBuilder;
    .locals 3
    .param p1, "key"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/Object;

    .line 484
    invoke-direct {p0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->assertNotBuilt()V

    .line 485
    invoke-static {p2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->createValue(Ljava/lang/Object;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object v0

    .line 486
    .local v0, "val":Ljavax/lang/model/element/AnnotationValue;
    invoke-virtual {p0, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->findElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    .line 487
    .local v1, "var":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->checkSubtype(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)V

    .line 488
    iget-object v2, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->elementValues:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    return-object p0
.end method

.method private typeFromClass(Ljava/lang/Class;)Ljavax/lang/model/type/TypeMirror;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljavax/lang/model/type/TypeMirror;"
        }
    .end annotation

    .line 345
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 346
    iget-object v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->types:Ljavax/lang/model/util/Types;

    sget-object v1, Ljavax/lang/model/type/TypeKind;->VOID:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->getNoType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/NoType;

    move-result-object v0

    return-object v0

    .line 347
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "primitiveName":Ljava/lang/String;
    invoke-static {v0}, Ljavax/lang/model/type/TypeKind;->valueOf(Ljava/lang/String;)Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    .line 350
    .local v1, "primitiveKind":Ljavax/lang/model/type/TypeKind;
    iget-object v2, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v2, v1}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v2

    return-object v2

    .line 351
    .end local v0    # "primitiveName":Ljava/lang/String;
    .end local v1    # "primitiveKind":Ljavax/lang/model/type/TypeKind;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 352
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->typeFromClass(Ljava/lang/Class;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 353
    .local v0, "componentType":Ljavax/lang/model/type/TypeMirror;
    iget-object v1, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v1, v0}, Ljavax/lang/model/util/Types;->getArrayType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ArrayType;

    move-result-object v1

    return-object v1

    .line 355
    .end local v0    # "componentType":Ljavax/lang/model/type/TypeMirror;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 357
    iget-object v1, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->elements:Ljavax/lang/model/util/Elements;

    invoke-interface {v1, v0}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    .line 358
    .local v1, "element":Ljavax/lang/model/element/TypeElement;
    if-eqz v1, :cond_3

    .line 361
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    return-object v2

    .line 359
    :cond_3
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 356
    .end local v1    # "element":Ljavax/lang/model/element/TypeElement;
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "@AssumeAssertion(nullness): assumption"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public build()Ljavax/lang/model/element/AnnotationMirror;
    .locals 3

    .line 190
    invoke-direct {p0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->assertNotBuilt()V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->wasBuilt:Z

    .line 192
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;

    iget-object v1, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->annotationType:Ljavax/lang/model/type/DeclaredType;

    iget-object v2, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->elementValues:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;-><init>(Ljavax/lang/model/type/DeclaredType;Ljava/util/Map;)V

    return-object v0
.end method

.method public varargs copyElementValuesFromAnnotation(Ljavax/lang/model/element/AnnotationMirror;[Ljava/lang/String;)V
    .locals 7
    .param p1, "valueHolder"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "ignorableElements"    # [Ljava/lang/String;

    .line 205
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 207
    .local v0, "ignorableElementsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 208
    .local v2, "eltValToCopy":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    .line 209
    .local v3, "eltNameToCopy":Ljavax/lang/model/element/Name;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    goto :goto_0

    .line 212
    :cond_0
    iget-object v4, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->elementValues:Ljava/util/Map;

    invoke-virtual {p0, v3}, Lorg/checkerframework/javacutil/AnnotationBuilder;->findElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/AnnotationValue;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .end local v2    # "eltValToCopy":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    .end local v3    # "eltNameToCopy":Ljavax/lang/model/element/Name;
    goto :goto_0

    .line 214
    :cond_1
    return-void
.end method

.method public copyRenameElementValuesFromAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Map;)V
    .locals 7
    .param p1, "valueHolder"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 230
    .local p2, "elementNameRenaming":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 232
    .local v1, "eltValToCopy":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "sourceName":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 234
    .local v3, "targetName":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 235
    goto :goto_0

    .line 237
    :cond_0
    iget-object v4, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->elementValues:Ljava/util/Map;

    invoke-virtual {p0, v3}, Lorg/checkerframework/javacutil/AnnotationBuilder;->findElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/AnnotationValue;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .end local v1    # "eltValToCopy":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    .end local v2    # "sourceName":Ljava/lang/String;
    .end local v3    # "targetName":Ljava/lang/String;
    goto :goto_0

    .line 239
    :cond_1
    return-void
.end method

.method public findElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/ExecutableElement;
    .locals 3
    .param p1, "key"    # Ljava/lang/CharSequence;

    .line 493
    iget-object v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->annotationElt:Ljavax/lang/model/element/TypeElement;

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/ExecutableElement;

    .line 494
    .local v1, "elt":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-interface {v2, p1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    return-object v1

    .line 497
    .end local v1    # "elt":Ljavax/lang/model/element/ExecutableElement;
    :cond_0
    goto :goto_0

    .line 498
    :cond_1
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " element in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->annotationElt:Ljavax/lang/model/element/TypeElement;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeElement(Ljava/lang/CharSequence;)Lorg/checkerframework/javacutil/AnnotationBuilder;
    .locals 2
    .param p1, "elementName"    # Ljava/lang/CharSequence;

    .line 317
    invoke-direct {p0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->assertNotBuilt()V

    .line 318
    invoke-virtual {p0, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->findElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 319
    .local v0, "var":Ljavax/lang/model/element/ExecutableElement;
    iget-object v1, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->elementValues:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    return-object p0
.end method

.method public setValue(Ljava/lang/CharSequence;Ljava/lang/Boolean;)Lorg/checkerframework/javacutil/AnnotationBuilder;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/Boolean;

    .line 274
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Object;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/CharSequence;Ljava/lang/Character;)Lorg/checkerframework/javacutil/AnnotationBuilder;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/Character;

    .line 279
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Object;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/CharSequence;Ljava/lang/Class;)Lorg/checkerframework/javacutil/AnnotationBuilder;
    .locals 2
    .param p1, "elementName"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/checkerframework/javacutil/AnnotationBuilder;"
        }
    .end annotation

    .line 366
    .local p2, "value":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->typeFromClass(Ljava/lang/Class;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 367
    .local v0, "type":Ljavax/lang/model/type/TypeMirror;
    invoke-direct {p0, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->getErasedOrBoxedType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    move-result-object v1

    return-object v1
.end method

.method public setValue(Ljava/lang/CharSequence;Ljava/lang/Double;)Lorg/checkerframework/javacutil/AnnotationBuilder;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/Double;

    .line 284
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Object;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/CharSequence;Ljava/lang/Enum;)Lorg/checkerframework/javacutil/AnnotationBuilder;
    .locals 2
    .param p1, "elementName"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/checkerframework/javacutil/AnnotationBuilder;"
        }
    .end annotation

    .line 371
    .local p2, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-direct {p0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->assertNotBuilt()V

    .line 372
    invoke-direct {p0, p2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->findEnumElement(Ljava/lang/Enum;)Ljavax/lang/model/element/VariableElement;

    move-result-object v0

    .line 373
    .local v0, "enumElt":Ljavax/lang/model/element/VariableElement;
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljavax/lang/model/element/VariableElement;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    move-result-object v1

    return-object v1
.end method

.method public setValue(Ljava/lang/CharSequence;Ljava/lang/Float;)Lorg/checkerframework/javacutil/AnnotationBuilder;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/Float;

    .line 289
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Object;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/CharSequence;Ljava/lang/Integer;)Lorg/checkerframework/javacutil/AnnotationBuilder;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/Integer;

    .line 294
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Object;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/CharSequence;Ljava/lang/Long;)Lorg/checkerframework/javacutil/AnnotationBuilder;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/Long;

    .line 299
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Object;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/CharSequence;Ljava/lang/Short;)Lorg/checkerframework/javacutil/AnnotationBuilder;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/Short;

    .line 304
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Object;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/checkerframework/javacutil/AnnotationBuilder;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/String;

    .line 309
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Object;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/CharSequence;Ljava/util/List;)Lorg/checkerframework/javacutil/AnnotationBuilder;
    .locals 6
    .param p1, "elementName"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/checkerframework/javacutil/AnnotationBuilder;"
        }
    .end annotation

    .line 249
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    invoke-direct {p0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->assertNotBuilt()V

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 251
    .local v0, "avalues":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationValue;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->findElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    .line 252
    .local v1, "var":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 253
    .local v2, "expectedType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v3, v4, :cond_1

    .line 256
    move-object v3, v2

    check-cast v3, Ljavax/lang/model/type/ArrayType;

    invoke-interface {v3}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 258
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 259
    .local v4, "v":Ljava/lang/Object;
    invoke-direct {p0, v2, v4}, Lorg/checkerframework/javacutil/AnnotationBuilder;->checkSubtype(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)V

    .line 260
    invoke-static {v4}, Lorg/checkerframework/javacutil/AnnotationBuilder;->createValue(Ljava/lang/Object;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    .end local v4    # "v":Ljava/lang/Object;
    goto :goto_0

    .line 262
    :cond_0
    invoke-static {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->createValue(Ljava/lang/Object;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object v3

    .line 263
    .local v3, "aval":Ljavax/lang/model/element/AnnotationValue;
    iget-object v4, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->elementValues:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    return-object p0

    .line 254
    .end local v3    # "aval":Ljavax/lang/model/element/AnnotationValue;
    :cond_1
    new-instance v3, Lorg/checkerframework/javacutil/BugInCF;

    const-string v4, "value is an array while expected type is not"

    invoke-direct {v3, v4}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setValue(Ljava/lang/CharSequence;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/javacutil/AnnotationBuilder;
    .locals 0
    .param p1, "elementName"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 243
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Object;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 244
    return-object p0
.end method

.method public setValue(Ljava/lang/CharSequence;Ljavax/lang/model/element/VariableElement;)Lorg/checkerframework/javacutil/AnnotationBuilder;
    .locals 4
    .param p1, "elementName"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljavax/lang/model/element/VariableElement;

    .line 377
    invoke-virtual {p0, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->findElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 378
    .local v0, "var":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_1

    .line 381
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/DeclaredType;

    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-interface {p2}, Ljavax/lang/model/element/VariableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->elementValues:Ljava/util/Map;

    invoke-static {p2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->createValue(Ljava/lang/Object;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    return-object p0

    .line 382
    :cond_0
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected a different type of enum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljavax/lang/model/element/VariableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    :cond_1
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected a non enum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setValue(Ljava/lang/CharSequence;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/javacutil/AnnotationBuilder;
    .locals 5
    .param p1, "elementName"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljavax/lang/model/type/TypeMirror;

    .line 331
    invoke-direct {p0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->assertNotBuilt()V

    .line 332
    invoke-direct {p0, p2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->getErasedOrBoxedType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p2

    .line 333
    invoke-static {p2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->createValue(Ljava/lang/Object;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object v0

    .line 334
    .local v0, "val":Ljavax/lang/model/element/AnnotationValue;
    invoke-virtual {p0, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->findElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    .line 336
    .local v1, "var":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/javacutil/TypesUtils;->isClass(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    iget-object v2, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->elementValues:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    return-object p0

    .line 337
    :cond_0
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setValue(Ljava/lang/CharSequence;[Ljava/lang/Enum;)Lorg/checkerframework/javacutil/AnnotationBuilder;
    .locals 8
    .param p1, "elementName"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lorg/checkerframework/javacutil/AnnotationBuilder;"
        }
    .end annotation

    .line 390
    .local p2, "values":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    invoke-direct {p0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->assertNotBuilt()V

    .line 392
    array-length v0, p2

    if-nez v0, :cond_0

    .line 393
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/util/List;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 394
    return-object p0

    .line 397
    :cond_0
    const/4 v0, 0x0

    aget-object v1, p2, v0

    invoke-direct {p0, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->findEnumElement(Ljava/lang/Enum;)Ljavax/lang/model/element/VariableElement;

    move-result-object v1

    .line 398
    .local v1, "enumElt":Ljavax/lang/model/element/VariableElement;
    invoke-virtual {p0, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->findElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    .line 400
    .local v2, "var":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 401
    .local v3, "expectedType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v3}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_4

    .line 405
    move-object v4, v3

    check-cast v4, Ljavax/lang/model/type/ArrayType;

    invoke-interface {v4}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 406
    invoke-interface {v3}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_3

    .line 409
    move-object v4, v3

    check-cast v4, Ljavax/lang/model/type/DeclaredType;

    invoke-interface {v4}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v4

    invoke-interface {v1}, Ljavax/lang/model/element/VariableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 414
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 415
    .local v4, "res":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationValue;>;"
    array-length v5, p2

    :goto_0
    if-ge v0, v5, :cond_1

    aget-object v6, p2, v0

    .line 416
    .local v6, "ev":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-direct {p0, v3, v6}, Lorg/checkerframework/javacutil/AnnotationBuilder;->checkSubtype(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)V

    .line 417
    invoke-direct {p0, v6}, Lorg/checkerframework/javacutil/AnnotationBuilder;->findEnumElement(Ljava/lang/Enum;)Ljavax/lang/model/element/VariableElement;

    move-result-object v1

    .line 418
    invoke-static {v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->createValue(Ljava/lang/Object;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    .end local v6    # "ev":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    :cond_1
    invoke-static {v4}, Lorg/checkerframework/javacutil/AnnotationBuilder;->createValue(Ljava/lang/Object;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object v0

    .line 421
    .local v0, "val":Ljavax/lang/model/element/AnnotationValue;
    iget-object v5, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->elementValues:Ljava/util/Map;

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    return-object p0

    .line 410
    .end local v0    # "val":Ljavax/lang/model/element/AnnotationValue;
    .end local v4    # "res":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationValue;>;"
    :cond_2
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected a different type of enum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 411
    invoke-interface {v1}, Ljavax/lang/model/element/VariableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_3
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected a non enum component type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_4
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected a non array: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lorg/checkerframework/javacutil/AnnotationBuilder;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/CharSequence;
    .param p2, "values"    # [Ljava/lang/Object;

    .line 269
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/util/List;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/CharSequence;[Ljavax/lang/model/element/VariableElement;)Lorg/checkerframework/javacutil/AnnotationBuilder;
    .locals 7
    .param p1, "elementName"    # Ljava/lang/CharSequence;
    .param p2, "values"    # [Ljavax/lang/model/element/VariableElement;

    .line 429
    invoke-direct {p0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->assertNotBuilt()V

    .line 430
    invoke-virtual {p0, p1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->findElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 432
    .local v0, "var":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 433
    .local v1, "expectedType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_4

    .line 437
    move-object v2, v1

    check-cast v2, Ljavax/lang/model/type/ArrayType;

    invoke-interface {v2}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 438
    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_3

    .line 445
    iget-object v2, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->types:Ljavax/lang/model/util/Types;

    move-object v3, v1

    check-cast v3, Ljavax/lang/model/type/DeclaredType;

    const/4 v4, 0x0

    aget-object v5, p2, v4

    invoke-interface {v5}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 453
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 454
    .local v2, "res":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationValue;>;"
    array-length v3, p2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p2, v4

    .line 455
    .local v5, "ev":Ljavax/lang/model/element/VariableElement;
    invoke-direct {p0, v1, v5}, Lorg/checkerframework/javacutil/AnnotationBuilder;->checkSubtype(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)V

    .line 458
    invoke-interface {v5}, Ljavax/lang/model/element/VariableElement;->getConstantValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 459
    invoke-interface {v5}, Ljavax/lang/model/element/VariableElement;->getConstantValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/checkerframework/javacutil/AnnotationBuilder;->createValue(Ljava/lang/Object;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 461
    :cond_0
    invoke-static {v5}, Lorg/checkerframework/javacutil/AnnotationBuilder;->createValue(Ljava/lang/Object;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    .end local v5    # "ev":Ljavax/lang/model/element/VariableElement;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 464
    :cond_1
    invoke-static {v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->createValue(Ljava/lang/Object;)Ljavax/lang/model/element/AnnotationValue;

    move-result-object v3

    .line 465
    .local v3, "val":Ljavax/lang/model/element/AnnotationValue;
    iget-object v4, p0, Lorg/checkerframework/javacutil/AnnotationBuilder;->elementValues:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    return-object p0

    .line 446
    .end local v2    # "res":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationValue;>;"
    .end local v3    # "val":Ljavax/lang/model/element/AnnotationValue;
    :cond_2
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected a different declared component type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " vs. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 439
    :cond_3
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected a declared component type, but found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " kind: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 443
    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 434
    :cond_4
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected an array, but found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2
.end method
