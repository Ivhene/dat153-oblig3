.class final Lorg/checkerframework/org/plumelib/util/Intern$LongHasher;
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
    name = "LongHasher"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/plumelib/util/Intern$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/plumelib/util/Intern$1;

    .line 137
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/Intern$LongHasher;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "a1"    # Ljava/lang/Object;
    .param p2, "a2"    # Ljava/lang/Object;

    .line 140
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 145
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    .line 146
    .local v0, "i":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    return v1
.end method