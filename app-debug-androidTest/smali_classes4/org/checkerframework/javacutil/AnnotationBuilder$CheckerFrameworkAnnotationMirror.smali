.class Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;
.super Ljava/lang/Object;
.source "AnnotationBuilder.java"

# interfaces
.implements Ljavax/lang/model/element/AnnotationMirror;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/javacutil/AnnotationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckerFrameworkAnnotationMirror"
.end annotation


# instance fields
.field final annotationName:Ljava/lang/String;

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

.field private toStringVal:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljavax/lang/model/type/DeclaredType;Ljava/util/Map;)V
    .locals 2
    .param p1, "at"    # Ljavax/lang/model/type/DeclaredType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/DeclaredType;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;)V"
        }
    .end annotation

    .line 581
    .local p2, "ev":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/AnnotationValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput-object p1, p0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;->annotationType:Ljavax/lang/model/type/DeclaredType;

    .line 583
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 584
    .local v0, "elm":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;->annotationName:Ljava/lang/String;

    .line 585
    iput-object p2, p0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;->elementValues:Ljava/util/Map;

    .line 586
    return-void
.end method


# virtual methods
.method public getAnnotationType()Ljavax/lang/model/type/DeclaredType;
    .locals 1

    .line 590
    iget-object v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;->annotationType:Ljavax/lang/model/type/DeclaredType;

    return-object v0
.end method

.method public getElementValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "+",
            "Ljavax/lang/model/element/ExecutableElement;",
            "+",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;"
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;->elementValues:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 601
    iget-object v0, p0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;->toStringVal:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 602
    return-object v0

    .line 604
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    iget-object v1, p0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;->annotationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    iget-object v1, p0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;->elementValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 608
    .local v1, "len":I
    if-lez v1, :cond_5

    .line 609
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 610
    const/4 v2, 0x1

    .line 612
    .local v2, "first":Z
    iget-object v3, p0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;->elementValues:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 613
    .local v4, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/AnnotationValue;>;"
    if-nez v2, :cond_1

    .line 614
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    :cond_1
    const/4 v2, 0x0

    .line 618
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v5}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 619
    .local v5, "name":Ljava/lang/String;
    const/4 v6, 0x1

    if-gt v1, v6, :cond_2

    const-string v6, "value"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 620
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 623
    :cond_3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 624
    .end local v4    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/AnnotationValue;>;"
    .end local v5    # "name":Ljava/lang/String;
    goto :goto_0

    .line 625
    :cond_4
    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 627
    .end local v2    # "first":Z
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/javacutil/AnnotationBuilder$CheckerFrameworkAnnotationMirror;->toStringVal:Ljava/lang/String;

    .line 628
    return-object v2
.end method
