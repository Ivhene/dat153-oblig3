.class public abstract Lnet/bytebuddy/description/type/TypeDescription$Generic$AbstractBase;
.super Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;
.source "TypeDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/type/TypeDescription$Generic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3475
    invoke-direct {p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 0

    .line 3488
    return-object p0
.end method

.method public asRawType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    .line 3495
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AbstractBase;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 3481
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AbstractBase;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getModifiers()I

    move-result v0

    return v0
.end method

.method public represents(Ljava/lang/reflect/Type;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .line 3502
    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
