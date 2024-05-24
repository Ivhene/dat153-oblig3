.class public Lnet/bytebuddy/matcher/AnnotationTargetMatcher;
.super Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;
.source "AnnotationTargetMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
        ">",
        "Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final elementType:Ljava/lang/annotation/ElementType;


# direct methods
.method public constructor <init>(Ljava/lang/annotation/ElementType;)V
    .locals 0
    .param p1, "elementType"    # Ljava/lang/annotation/ElementType;

    .line 41
    .local p0, "this":Lnet/bytebuddy/matcher/AnnotationTargetMatcher;, "Lnet/bytebuddy/matcher/AnnotationTargetMatcher<TT;>;"
    invoke-direct {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;-><init>()V

    .line 42
    iput-object p1, p0, Lnet/bytebuddy/matcher/AnnotationTargetMatcher;->elementType:Ljava/lang/annotation/ElementType;

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/matcher/AnnotationTargetMatcher;->elementType:Ljava/lang/annotation/ElementType;

    check-cast p1, Lnet/bytebuddy/matcher/AnnotationTargetMatcher;

    iget-object p1, p1, Lnet/bytebuddy/matcher/AnnotationTargetMatcher;->elementType:Ljava/lang/annotation/ElementType;

    invoke-virtual {v2, p1}, Ljava/lang/annotation/ElementType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/matcher/AnnotationTargetMatcher;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/matcher/AnnotationTargetMatcher;->elementType:Ljava/lang/annotation/ElementType;

    invoke-virtual {v1}, Ljava/lang/annotation/ElementType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 28
    .local p0, "this":Lnet/bytebuddy/matcher/AnnotationTargetMatcher;, "Lnet/bytebuddy/matcher/AnnotationTargetMatcher<TT;>;"
    check-cast p1, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/matcher/AnnotationTargetMatcher;->matches(Lnet/bytebuddy/description/annotation/AnnotationDescription;)Z

    move-result p1

    return p1
.end method

.method public matches(Lnet/bytebuddy/description/annotation/AnnotationDescription;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 49
    .local p0, "this":Lnet/bytebuddy/matcher/AnnotationTargetMatcher;, "Lnet/bytebuddy/matcher/AnnotationTargetMatcher<TT;>;"
    .local p1, "target":Lnet/bytebuddy/description/annotation/AnnotationDescription;, "TT;"
    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getElementTypes()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/matcher/AnnotationTargetMatcher;->elementType:Ljava/lang/annotation/ElementType;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    .local p0, "this":Lnet/bytebuddy/matcher/AnnotationTargetMatcher;, "Lnet/bytebuddy/matcher/AnnotationTargetMatcher<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "targetsElement("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/matcher/AnnotationTargetMatcher;->elementType:Ljava/lang/annotation/ElementType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
