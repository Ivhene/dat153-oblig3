.class public Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;
.super Lnet/bytebuddy/description/annotation/AnnotationList$AbstractBase;
.source "AnnotationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForLoadedAnnotations"
.end annotation


# instance fields
.field private final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 213
    .local p1, "annotations":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationList$AbstractBase;-><init>()V

    .line 214
    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;->annotations:Ljava/util/List;

    .line 215
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/annotation/Annotation;)V
    .locals 1
    .param p1, "annotation"    # [Ljava/lang/annotation/Annotation;

    .line 205
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>(Ljava/util/List;)V

    .line 206
    return-void
.end method

.method public static asList([[Ljava/lang/annotation/Annotation;)Ljava/util/List;
    .locals 5
    .param p0, "annotations"    # [[Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/annotation/AnnotationList;",
            ">;"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/annotation/AnnotationList;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 226
    .local v3, "annotation":[Ljava/lang/annotation/Annotation;
    new-instance v4, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    invoke-direct {v4, v3}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>([Ljava/lang/annotation/Annotation;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v3    # "annotation":[Ljava/lang/annotation/Annotation;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;->get(I)Lnet/bytebuddy/description/annotation/AnnotationDescription;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/annotation/AnnotationDescription;
    .locals 1
    .param p1, "index"    # I

    .line 235
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;->annotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    invoke-static {v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->of(Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 242
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;->annotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
