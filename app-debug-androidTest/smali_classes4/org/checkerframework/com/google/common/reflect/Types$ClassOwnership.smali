.class abstract enum Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;
.super Ljava/lang/Enum;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/reflect/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "ClassOwnership"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;

.field static final JVM_BEHAVIOR:Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;

.field public static final enum LOCAL_CLASS_HAS_NO_OWNER:Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;

.field public static final enum OWNED_BY_ENCLOSING_CLASS:Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 107
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership$1;

    const-string v1, "OWNED_BY_ENCLOSING_CLASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;->OWNED_BY_ENCLOSING_CLASS:Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;

    .line 114
    new-instance v1, Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership$2;

    const-string v3, "LOCAL_CLASS_HAS_NO_OWNER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;->LOCAL_CLASS_HAS_NO_OWNER:Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;

    .line 106
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;->$VALUES:[Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;

    .line 128
    invoke-static {}, Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;->detectJvmBehavior()Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;->JVM_BEHAVIOR:Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/checkerframework/com/google/common/reflect/Types$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/checkerframework/com/google/common/reflect/Types$1;

    .line 106
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static detectJvmBehavior()Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;
    .locals 8

    .line 132
    new-instance v0, Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership$3;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership$3;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 133
    .local v0, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 134
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {}, Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;->values()[Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 135
    .local v5, "behavior":Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;
    const-class v6, Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership$1LocalClass;

    invoke-virtual {v5, v6}, Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;->getOwnerType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v7

    if-ne v6, v7, :cond_0

    .line 136
    return-object v5

    .line 134
    .end local v5    # "behavior":Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 139
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 106
    const-class v0, Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;
    .locals 1

    .line 106
    sget-object v0, Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;->$VALUES:[Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;

    invoke-virtual {v0}, [Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;

    return-object v0
.end method


# virtual methods
.method abstract getOwnerType(Ljava/lang/Class;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method
