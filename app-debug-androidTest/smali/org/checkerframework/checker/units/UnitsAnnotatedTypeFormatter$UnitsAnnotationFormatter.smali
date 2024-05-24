.class public Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFormatter$UnitsAnnotationFormatter;
.super Lorg/checkerframework/framework/util/DefaultAnnotationFormatter;
.source "UnitsAnnotatedTypeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UnitsAnnotationFormatter"
.end annotation


# instance fields
.field protected final checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

.field protected final elements:Ljavax/lang/model/util/Elements;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 1
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 56
    invoke-direct {p0}, Lorg/checkerframework/framework/util/DefaultAnnotationFormatter;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFormatter$UnitsAnnotationFormatter;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 58
    invoke-virtual {p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFormatter$UnitsAnnotationFormatter;->elements:Ljavax/lang/model/util/Elements;

    .line 59
    return-void
.end method


# virtual methods
.method public formatAnnotationString(Ljava/util/Collection;Z)Ljava/lang/String;
    .locals 5
    .param p2, "printInvisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 65
    .local p1, "annos":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v0

    .line 69
    .local v0, "trimmedAnnoSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 70
    .local v2, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v2}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->getPrefix(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/units/qual/Prefix;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/checker/units/qual/Prefix;->one:Lorg/checkerframework/checker/units/qual/Prefix;

    if-ne v3, v4, :cond_0

    .line 71
    iget-object v3, p0, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFormatter$UnitsAnnotationFormatter;->elements:Ljavax/lang/model/util/Elements;

    invoke-static {v3, v2}, Lorg/checkerframework/checker/units/UnitsRelationsTools;->removePrefix(Ljavax/lang/model/util/Elements;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 74
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v2    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 77
    :cond_1
    nop

    .line 78
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 77
    invoke-super {p0, v1, p2}, Lorg/checkerframework/framework/util/DefaultAnnotationFormatter;->formatAnnotationString(Ljava/util/Collection;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
