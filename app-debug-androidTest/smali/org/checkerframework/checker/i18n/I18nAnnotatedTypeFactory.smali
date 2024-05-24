.class public Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory;
.super Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;
.source "I18nAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory$I18nTreeAnnotator;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 25
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 26
    invoke-virtual {p0}, Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory;->postInit()V

    .line 27
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory;)Ljavax/lang/model/util/Elements;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory;

    .line 22
    iget-object v0, p0, Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory;->elements:Ljavax/lang/model/util/Elements;

    return-object v0
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

    .line 31
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/checkerframework/checker/i18n/qual/Localized;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/checkerframework/checker/i18n/qual/UnknownLocalized;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
    .locals 4

    .line 36
    new-instance v0, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    const/4 v2, 0x0

    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->createTreeAnnotator()Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory$I18nTreeAnnotator;

    invoke-direct {v2, p0, p0}, Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory$I18nTreeAnnotator;-><init>(Lorg/checkerframework/checker/i18n/I18nAnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/treeannotator/ListTreeAnnotator;-><init>([Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;)V

    return-object v0
.end method
