.class public abstract enum Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;
.super Ljava/lang/Enum;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$ArgumentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;

.field public static final enum COPYING:Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;

.field public static final enum SIMPLE:Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4570
    new-instance v0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory$1;

    const-string v1, "SIMPLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;->SIMPLE:Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;

    .line 4586
    new-instance v1, Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory$2;

    const-string v3, "COPYING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;->COPYING:Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;

    .line 4565
    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;->$VALUES:[Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4565
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/asm/Advice$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/bytebuddy/asm/Advice$1;

    .line 4565
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 4565
    const-class v0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;
    .locals 1

    .line 4565
    sget-object v0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;->$VALUES:[Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;

    return-object v0
.end method


# virtual methods
.method protected abstract resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/util/Map;)Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;)",
            "Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;"
        }
    .end annotation
.end method
