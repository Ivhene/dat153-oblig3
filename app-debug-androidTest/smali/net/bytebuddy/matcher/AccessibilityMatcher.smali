.class public Lnet/bytebuddy/matcher/AccessibilityMatcher;
.super Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;
.source "AccessibilityMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/bytebuddy/description/ByteCodeElement;",
        ">",
        "Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 40
    .local p0, "this":Lnet/bytebuddy/matcher/AccessibilityMatcher;, "Lnet/bytebuddy/matcher/AccessibilityMatcher<TT;>;"
    invoke-direct {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;-><init>()V

    .line 41
    iput-object p1, p0, Lnet/bytebuddy/matcher/AccessibilityMatcher;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    .line 42
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
    iget-object v2, p0, Lnet/bytebuddy/matcher/AccessibilityMatcher;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/matcher/AccessibilityMatcher;

    iget-object p1, p1, Lnet/bytebuddy/matcher/AccessibilityMatcher;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/matcher/AccessibilityMatcher;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/matcher/AccessibilityMatcher;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 27
    .local p0, "this":Lnet/bytebuddy/matcher/AccessibilityMatcher;, "Lnet/bytebuddy/matcher/AccessibilityMatcher<TT;>;"
    check-cast p1, Lnet/bytebuddy/description/ByteCodeElement;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/matcher/AccessibilityMatcher;->matches(Lnet/bytebuddy/description/ByteCodeElement;)Z

    move-result p1

    return p1
.end method

.method public matches(Lnet/bytebuddy/description/ByteCodeElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 48
    .local p0, "this":Lnet/bytebuddy/matcher/AccessibilityMatcher;, "Lnet/bytebuddy/matcher/AccessibilityMatcher<TT;>;"
    .local p1, "target":Lnet/bytebuddy/description/ByteCodeElement;, "TT;"
    iget-object v0, p0, Lnet/bytebuddy/matcher/AccessibilityMatcher;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/ByteCodeElement;->isAccessibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    .local p0, "this":Lnet/bytebuddy/matcher/AccessibilityMatcher;, "Lnet/bytebuddy/matcher/AccessibilityMatcher<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAccessibleTo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/matcher/AccessibilityMatcher;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method