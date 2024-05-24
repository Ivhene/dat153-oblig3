.class final Lorg/checkerframework/org/plumelib/util/Intern$SubsequenceHasher;
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
    name = "SubsequenceHasher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/org/plumelib/util/Hasher;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1147
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/Intern$SubsequenceHasher;, "Lorg/checkerframework/org/plumelib/util/Intern$SubsequenceHasher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/plumelib/util/Intern$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/plumelib/util/Intern$1;

    .line 1147
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/Intern$SubsequenceHasher;, "Lorg/checkerframework/org/plumelib/util/Intern$SubsequenceHasher<TT;>;"
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/util/Intern$SubsequenceHasher;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "a1"    # Ljava/lang/Object;
    .param p2, "a2"    # Ljava/lang/Object;

    .line 1151
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/Intern$SubsequenceHasher;, "Lorg/checkerframework/org/plumelib/util/Intern$SubsequenceHasher<TT;>;"
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;

    .line 1153
    .local v0, "sai1":Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;, "Lorg/checkerframework/org/plumelib/util/Intern$Subsequence<TT;>;"
    move-object v1, p2

    check-cast v1, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;

    .line 1155
    .local v1, "sai2":Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;, "Lorg/checkerframework/org/plumelib/util/Intern$Subsequence<TT;>;"
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 1160
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/Intern$SubsequenceHasher;, "Lorg/checkerframework/org/plumelib/util/Intern$SubsequenceHasher<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
