.class final enum Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeFilter$1;
.super Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeFilter;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 801
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeFilter;-><init>(Ljava/lang/String;ILorg/checkerframework/com/google/common/reflect/TypeToken$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 801
    check-cast p1, Lorg/checkerframework/com/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken$TypeFilter$1;->apply(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Z

    move-result p1

    return p1
.end method

.method public apply(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/reflect/TypeToken<",
            "*>;)Z"
        }
    .end annotation

    .line 804
    .local p1, "type":Lorg/checkerframework/com/google/common/reflect/TypeToken;, "Lorg/checkerframework/com/google/common/reflect/TypeToken<*>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->access$500(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    .line 805
    invoke-static {p1}, Lorg/checkerframework/com/google/common/reflect/TypeToken;->access$500(Lorg/checkerframework/com/google/common/reflect/TypeToken;)Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/reflect/WildcardType;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 804
    :goto_0
    return v0
.end method
