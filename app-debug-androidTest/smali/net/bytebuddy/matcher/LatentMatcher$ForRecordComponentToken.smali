.class public Lnet/bytebuddy/matcher/LatentMatcher$ForRecordComponentToken;
.super Ljava/lang/Object;
.source "LatentMatcher.java"

# interfaces
.implements Lnet/bytebuddy/matcher/LatentMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/LatentMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForRecordComponentToken"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/matcher/LatentMatcher<",
        "Lnet/bytebuddy/description/type/RecordComponentDescription;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final token:Lnet/bytebuddy/description/type/RecordComponentDescription$Token;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/RecordComponentDescription$Token;)V
    .locals 0
    .param p1, "token"    # Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForRecordComponentToken;->token:Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    .line 245
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
    iget-object v2, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForRecordComponentToken;->token:Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    check-cast p1, Lnet/bytebuddy/matcher/LatentMatcher$ForRecordComponentToken;

    iget-object p1, p1, Lnet/bytebuddy/matcher/LatentMatcher$ForRecordComponentToken;->token:Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/matcher/LatentMatcher$ForRecordComponentToken;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForRecordComponentToken;->token:Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    invoke-virtual {v1}, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher;
    .locals 1
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/RecordComponentDescription;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForRecordComponentToken;->token:Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    invoke-virtual {v0}, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method
