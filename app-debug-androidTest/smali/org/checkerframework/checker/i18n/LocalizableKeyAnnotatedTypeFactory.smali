.class public Lorg/checkerframework/checker/i18n/LocalizableKeyAnnotatedTypeFactory;
.super Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;
.source "LocalizableKeyAnnotatedTypeFactory.java"


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 19
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected createSupportedTypeQualifiers()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/checkerframework/checker/i18n/qual/LocalizableKey;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/checkerframework/checker/i18n/qual/LocalizableKeyBottom;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lorg/checkerframework/checker/i18n/qual/UnknownLocalizableKey;

    aput-object v3, v1, v2

    .line 29
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 28
    return-object v0
.end method

.method public createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 4

    .line 37
    new-instance v0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    .line 38
    invoke-super {p0}, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;->createBasicTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory$KeyLookupTreeAnnotator;

    const-class v3, Lorg/checkerframework/checker/i18n/qual/LocalizableKey;

    invoke-direct {v2, p0, p0, v3}, Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory$KeyLookupTreeAnnotator;-><init>(Lorg/checkerframework/checker/propkey/PropertyKeyAnnotatedTypeFactory;Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;Ljava/lang/Class;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>([Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;)V

    .line 37
    return-object v0
.end method
