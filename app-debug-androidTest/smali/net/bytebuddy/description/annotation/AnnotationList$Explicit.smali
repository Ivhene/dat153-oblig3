.class public Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;
.super Lnet/bytebuddy/description/annotation/AnnotationList$AbstractBase;
.source "AnnotationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Explicit"
.end annotation


# instance fields
.field private final annotationDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
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
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)V"
        }
    .end annotation

    .line 270
    .local p1, "annotationDescriptions":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/annotation/AnnotationDescription;>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationList$AbstractBase;-><init>()V

    .line 271
    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;->annotationDescriptions:Ljava/util/List;

    .line 272
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/description/annotation/AnnotationDescription;)V
    .locals 1
    .param p1, "annotationDescription"    # [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 262
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;-><init>(Ljava/util/List;)V

    .line 263
    return-void
.end method

.method public static asList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;>;)",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/annotation/AnnotationList;",
            ">;"
        }
    .end annotation

    .line 281
    .local p0, "annotations":Ljava/util/List;, "Ljava/util/List<+Ljava/util/List<+Lnet/bytebuddy/description/annotation/AnnotationDescription;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 282
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/annotation/AnnotationList;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 283
    .local v2, "annotation":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/annotation/AnnotationDescription;>;"
    new-instance v3, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;

    invoke-direct {v3, v2}, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    .end local v2    # "annotation":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/annotation/AnnotationDescription;>;"
    goto :goto_0

    .line 285
    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 249
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;->get(I)Lnet/bytebuddy/description/annotation/AnnotationDescription;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/annotation/AnnotationDescription;
    .locals 1
    .param p1, "index"    # I

    .line 292
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;->annotationDescriptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 299
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;->annotationDescriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
