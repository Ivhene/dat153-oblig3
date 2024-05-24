.class public Lnet/bytebuddy/matcher/BooleanMatcher;
.super Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;
.source "BooleanMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final FALSE:Lnet/bytebuddy/matcher/BooleanMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/BooleanMatcher<",
            "*>;"
        }
    .end annotation
.end field

.field private static final TRUE:Lnet/bytebuddy/matcher/BooleanMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/BooleanMatcher<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field protected final matches:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    nop

    .line 31
    new-instance v0, Lnet/bytebuddy/matcher/BooleanMatcher;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/BooleanMatcher;-><init>(Z)V

    sput-object v0, Lnet/bytebuddy/matcher/BooleanMatcher;->TRUE:Lnet/bytebuddy/matcher/BooleanMatcher;

    .line 36
    new-instance v0, Lnet/bytebuddy/matcher/BooleanMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/BooleanMatcher;-><init>(Z)V

    sput-object v0, Lnet/bytebuddy/matcher/BooleanMatcher;->FALSE:Lnet/bytebuddy/matcher/BooleanMatcher;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "matches"    # Z

    .line 60
    .local p0, "this":Lnet/bytebuddy/matcher/BooleanMatcher;, "Lnet/bytebuddy/matcher/BooleanMatcher<TT;>;"
    invoke-direct {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;-><init>()V

    .line 61
    iput-boolean p1, p0, Lnet/bytebuddy/matcher/BooleanMatcher;->matches:Z

    .line 62
    return-void
.end method

.method public static of(Z)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .param p0, "matches"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 47
    if-eqz p0, :cond_0

    sget-object v0, Lnet/bytebuddy/matcher/BooleanMatcher;->TRUE:Lnet/bytebuddy/matcher/BooleanMatcher;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/matcher/BooleanMatcher;->FALSE:Lnet/bytebuddy/matcher/BooleanMatcher;

    :goto_0
    return-object v0
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
    iget-boolean v2, p0, Lnet/bytebuddy/matcher/BooleanMatcher;->matches:Z

    check-cast p1, Lnet/bytebuddy/matcher/BooleanMatcher;

    iget-boolean p1, p1, Lnet/bytebuddy/matcher/BooleanMatcher;->matches:Z

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/matcher/BooleanMatcher;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/matcher/BooleanMatcher;->matches:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 68
    .local p0, "this":Lnet/bytebuddy/matcher/BooleanMatcher;, "Lnet/bytebuddy/matcher/BooleanMatcher<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lnet/bytebuddy/matcher/BooleanMatcher;->matches:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 73
    .local p0, "this":Lnet/bytebuddy/matcher/BooleanMatcher;, "Lnet/bytebuddy/matcher/BooleanMatcher<TT;>;"
    iget-boolean v0, p0, Lnet/bytebuddy/matcher/BooleanMatcher;->matches:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
