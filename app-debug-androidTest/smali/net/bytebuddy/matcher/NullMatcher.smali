.class public Lnet/bytebuddy/matcher/NullMatcher;
.super Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;
.source "NullMatcher.java"


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
.field private static final INSTANCE:Lnet/bytebuddy/matcher/NullMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/NullMatcher<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lnet/bytebuddy/matcher/NullMatcher;

    invoke-direct {v0}, Lnet/bytebuddy/matcher/NullMatcher;-><init>()V

    sput-object v0, Lnet/bytebuddy/matcher/NullMatcher;->INSTANCE:Lnet/bytebuddy/matcher/NullMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    .local p0, "this":Lnet/bytebuddy/matcher/NullMatcher;, "Lnet/bytebuddy/matcher/NullMatcher<TT;>;"
    invoke-direct {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;-><init>()V

    return-void
.end method

.method public static make()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    .line 41
    sget-object v0, Lnet/bytebuddy/matcher/NullMatcher;->INSTANCE:Lnet/bytebuddy/matcher/NullMatcher;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

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

    move-result-object p1

    if-eq v2, p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/matcher/NullMatcher;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 48
    .local p0, "this":Lnet/bytebuddy/matcher/NullMatcher;, "Lnet/bytebuddy/matcher/NullMatcher<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 53
    .local p0, "this":Lnet/bytebuddy/matcher/NullMatcher;, "Lnet/bytebuddy/matcher/NullMatcher<TT;>;"
    const-string v0, "isNull()"

    return-object v0
.end method
