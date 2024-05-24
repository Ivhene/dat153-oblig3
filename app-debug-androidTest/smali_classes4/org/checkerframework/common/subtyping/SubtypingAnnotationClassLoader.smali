.class public Lorg/checkerframework/common/subtyping/SubtypingAnnotationClassLoader;
.super Lorg/checkerframework/framework/type/AnnotationClassLoader;
.source "SubtypingAnnotationClassLoader.java"


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 11
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/AnnotationClassLoader;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected hasWellDefinedTargetMetaAnnotation(Ljava/lang/Class;)Z
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

    .line 19
    .local p1, "annoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/framework/type/AnnotationClassLoader;->hasWellDefinedTargetMetaAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/checkerframework/common/subtyping/qual/Unqualified;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
