.class public Lnet/bytebuddy/description/annotation/AnnotationList$Empty;
.super Lnet/bytebuddy/matcher/FilterableList$Empty;
.source "AnnotationList.java"

# interfaces
.implements Lnet/bytebuddy/description/annotation/AnnotationList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Empty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/matcher/FilterableList$Empty<",
        "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
        "Lnet/bytebuddy/description/annotation/AnnotationList;",
        ">;",
        "Lnet/bytebuddy/description/annotation/AnnotationList;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 306
    invoke-direct {p0}, Lnet/bytebuddy/matcher/FilterableList$Empty;-><init>()V

    return-void
.end method

.method public static asList(I)Ljava/util/List;
    .locals 3
    .param p0, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/annotation/AnnotationList;",
            ">;"
        }
    .end annotation

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 316
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/annotation/AnnotationList;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 317
    new-instance v2, Lnet/bytebuddy/description/annotation/AnnotationList$Empty;

    invoke-direct {v2}, Lnet/bytebuddy/description/annotation/AnnotationList$Empty;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public asTypeList()Lnet/bytebuddy/description/type/TypeList;
    .locals 1

    .line 369
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/type/TypeList$Empty;-><init>()V

    return-object v0
.end method

.method public inherited(Ljava/util/Set;)Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/description/annotation/AnnotationList;"
        }
    .end annotation

    .line 355
    .local p1, "ignoredTypes":Ljava/util/Set;, "Ljava/util/Set<+Lnet/bytebuddy/description/type/TypeDescription;>;"
    return-object p0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 326
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isAnnotationPresent(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 1
    .param p1, "annotationType"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "TT;>;"
        }
    .end annotation

    .line 341
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationDescription;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    return-object v0
.end method

.method public ofType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/annotation/AnnotationDescription;
    .locals 1
    .param p1, "annotationType"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 348
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationDescription;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    return-object v0
.end method

.method public visibility(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/annotation/RetentionPolicy;",
            ">;)",
            "Lnet/bytebuddy/description/annotation/AnnotationList;"
        }
    .end annotation

    .line 362
    .local p1, "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Ljava/lang/annotation/RetentionPolicy;>;"
    return-object p0
.end method
