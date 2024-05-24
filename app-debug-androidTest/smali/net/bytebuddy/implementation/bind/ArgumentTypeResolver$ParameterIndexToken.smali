.class public Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;
.super Ljava/lang/Object;
.source "ArgumentTypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterIndexToken"
.end annotation


# instance fields
.field private final parameterIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "parameterIndex"    # I

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput p1, p0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;->parameterIndex:I

    .line 266
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 275
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 276
    return v0

    .line 277
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 280
    :cond_1
    move-object v2, p1

    check-cast v2, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;

    .line 281
    .local v2, "parameterIndexToken":Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;
    iget v3, p0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;->parameterIndex:I

    iget v4, v2, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;->parameterIndex:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 278
    .end local v2    # "parameterIndexToken":Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 270
    iget v0, p0, Lnet/bytebuddy/implementation/bind/ArgumentTypeResolver$ParameterIndexToken;->parameterIndex:I

    return v0
.end method
