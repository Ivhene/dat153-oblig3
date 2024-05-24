.class public Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Simple;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Simple"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final annotationType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final offsetMapping:Lnet/bytebuddy/asm/Advice$OffsetMapping;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lnet/bytebuddy/asm/Advice$OffsetMapping;)V
    .locals 0
    .param p2, "offsetMapping"    # Lnet/bytebuddy/asm/Advice$OffsetMapping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping;",
            ")V"
        }
    .end annotation

    .line 1391
    .local p0, "this":Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Simple;, "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Simple<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1392
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Simple;->annotationType:Ljava/lang/Class;

    .line 1393
    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Simple;->offsetMapping:Lnet/bytebuddy/asm/Advice$OffsetMapping;

    .line 1394
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
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Simple;->annotationType:Ljava/lang/Class;

    check-cast p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Simple;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Simple;->annotationType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Simple;->offsetMapping:Lnet/bytebuddy/asm/Advice$OffsetMapping;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Simple;->offsetMapping:Lnet/bytebuddy/asm/Advice$OffsetMapping;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getAnnotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 1400
    .local p0, "this":Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Simple;, "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Simple<TT;>;"
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Simple;->annotationType:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Simple;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Simple;->annotationType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Simple;->offsetMapping:Lnet/bytebuddy/asm/Advice$OffsetMapping;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public make(Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;)Lnet/bytebuddy/asm/Advice$OffsetMapping;
    .locals 1
    .param p1, "target"    # Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;
    .param p3, "adviceType"    # Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "TT;>;",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;",
            ")",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping;"
        }
    .end annotation

    .line 1407
    .local p0, "this":Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Simple;, "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Simple<TT;>;"
    .local p2, "annotation":Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<TT;>;"
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Simple;->offsetMapping:Lnet/bytebuddy/asm/Advice$OffsetMapping;

    return-object v0
.end method
