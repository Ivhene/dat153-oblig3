.class final enum Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership$2;
.super Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/google/common/reflect/Types$ClassOwnership;-><init>(Ljava/lang/String;ILorg/checkerframework/com/google/common/reflect/Types$1;)V

    return-void
.end method


# virtual methods
.method getOwnerType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 118
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
