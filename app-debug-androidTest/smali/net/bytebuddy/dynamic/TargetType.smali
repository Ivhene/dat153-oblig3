.class public final Lnet/bytebuddy/dynamic/TargetType;
.super Ljava/lang/Object;
.source "TargetType.java"


# static fields
.field public static final DESCRIPTION:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lnet/bytebuddy/dynamic/TargetType;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/TargetType;->DESCRIPTION:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class only serves as a marker type and should not be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 3
    .param p0, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p1, "targetType"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "arity":I
    move-object v1, p0

    .line 42
    .local v1, "componentType":Lnet/bytebuddy/description/type/TypeDescription;
    :goto_0
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    const-class v2, Lnet/bytebuddy/dynamic/TargetType;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    invoke-static {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription$ArrayProjection;->of(Lnet/bytebuddy/description/type/TypeDescription;I)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, p0

    .line 46
    :goto_1
    return-object v2
.end method
