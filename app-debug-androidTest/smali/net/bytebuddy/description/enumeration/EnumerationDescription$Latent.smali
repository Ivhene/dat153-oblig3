.class public Lnet/bytebuddy/description/enumeration/EnumerationDescription$Latent;
.super Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;
.source "EnumerationDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/enumeration/EnumerationDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Latent"
.end annotation


# instance fields
.field private final enumerationType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;)V
    .locals 0
    .param p1, "enumerationType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "value"    # Ljava/lang/String;

    .line 168
    invoke-direct {p0}, Lnet/bytebuddy/description/enumeration/EnumerationDescription$AbstractBase;-><init>()V

    .line 169
    iput-object p1, p0, Lnet/bytebuddy/description/enumeration/EnumerationDescription$Latent;->enumerationType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 170
    iput-object p2, p0, Lnet/bytebuddy/description/enumeration/EnumerationDescription$Latent;->value:Ljava/lang/String;

    .line 171
    return-void
.end method


# virtual methods
.method public getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 184
    iget-object v0, p0, Lnet/bytebuddy/description/enumeration/EnumerationDescription$Latent;->enumerationType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lnet/bytebuddy/description/enumeration/EnumerationDescription$Latent;->value:Ljava/lang/String;

    return-object v0
.end method

.method public load(Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 191
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lnet/bytebuddy/description/enumeration/EnumerationDescription$Latent;->enumerationType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lnet/bytebuddy/description/enumeration/EnumerationDescription$Latent;->value:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not represent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/description/enumeration/EnumerationDescription$Latent;->enumerationType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
