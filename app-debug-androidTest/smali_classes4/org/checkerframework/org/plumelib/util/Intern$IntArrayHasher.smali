.class final Lorg/checkerframework/org/plumelib/util/Intern$IntArrayHasher;
.super Ljava/lang/Object;
.source "Intern.java"

# interfaces
.implements Lorg/checkerframework/org/plumelib/util/Hasher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/Intern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntArrayHasher"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/plumelib/util/Intern$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/plumelib/util/Intern$1;

    .line 156
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/Intern$IntArrayHasher;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "a1"    # Ljava/lang/Object;
    .param p2, "a2"    # Ljava/lang/Object;

    .line 159
    move-object v0, p1

    check-cast v0, [I

    check-cast v0, [I

    move-object v1, p2

    check-cast v1, [I

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 164
    move-object v0, p1

    check-cast v0, [I

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method
