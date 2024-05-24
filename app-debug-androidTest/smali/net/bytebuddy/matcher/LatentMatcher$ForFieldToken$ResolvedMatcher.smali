.class public Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken$ResolvedMatcher;
.super Ljava/lang/Object;
.source "LatentMatcher.java"

# interfaces
.implements Lnet/bytebuddy/matcher/ElementMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ResolvedMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/matcher/ElementMatcher<",
        "Lnet/bytebuddy/description/field/FieldDescription;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final signatureToken:Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;)V
    .locals 0
    .param p1, "signatureToken"    # Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken$ResolvedMatcher;->signatureToken:Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;

    .line 160
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
    iget-object v2, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken$ResolvedMatcher;->signatureToken:Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;

    check-cast p1, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken$ResolvedMatcher;

    iget-object p1, p1, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken$ResolvedMatcher;->signatureToken:Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken$ResolvedMatcher;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken$ResolvedMatcher;->signatureToken:Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;

    invoke-virtual {v1}, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 145
    check-cast p1, Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken$ResolvedMatcher;->matches(Lnet/bytebuddy/description/field/FieldDescription;)Z

    move-result p1

    return p1
.end method

.method public matches(Lnet/bytebuddy/description/field/FieldDescription;)Z
    .locals 2
    .param p1, "target"    # Lnet/bytebuddy/description/field/FieldDescription;

    .line 166
    invoke-interface {p1}, Lnet/bytebuddy/description/field/FieldDescription;->asSignatureToken()Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken$ResolvedMatcher;->signatureToken:Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
