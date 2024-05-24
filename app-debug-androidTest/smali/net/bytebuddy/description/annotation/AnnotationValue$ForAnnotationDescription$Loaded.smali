.class public Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase;
.source "AnnotationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Loaded"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final annotation:Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/annotation/Annotation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1647
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded<TV;>;"
    .local p1, "annotation":Ljava/lang/annotation/Annotation;, "TV;"
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase;-><init>()V

    .line 1648
    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;->annotation:Ljava/lang/annotation/Annotation;

    .line 1649
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 1679
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded<TV;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1680
    return v0

    .line 1681
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1682
    return v2

    .line 1684
    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    .line 1685
    .local v1, "annotationValue":Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<*>;"
    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->getState()Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->isResolved()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;->annotation:Ljava/lang/annotation/Annotation;

    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->resolve()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getState()Lnet/bytebuddy/description/annotation/AnnotationValue$State;
    .locals 1

    .line 1655
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded<TV;>;"
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->RESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1674
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded<TV;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;->annotation:Ljava/lang/annotation/Annotation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public represents(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 1669
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded<TV;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;->annotation:Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 1635
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded<TV;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;->resolve()Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public resolve()Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1662
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded<TV;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;->annotation:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1690
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded<TV;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;->annotation:Ljava/lang/annotation/Annotation;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
