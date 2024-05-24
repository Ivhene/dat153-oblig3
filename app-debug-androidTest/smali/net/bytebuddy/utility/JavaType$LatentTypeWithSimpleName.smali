.class public Lnet/bytebuddy/utility/JavaType$LatentTypeWithSimpleName;
.super Lnet/bytebuddy/description/type/TypeDescription$Latent;
.source "JavaType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LatentTypeWithSimpleName"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "modifiers"    # I
    .param p3, "superClass"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)V"
        }
    .end annotation

    .line 300
    .local p4, "interfaces":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/type/TypeDescription$Generic;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/description/type/TypeDescription$Latent;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    .line 301
    return-void
.end method


# virtual methods
.method public getSimpleName()Ljava/lang/String;
    .locals 3

    .line 305
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaType$LatentTypeWithSimpleName;->getName()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 307
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method
