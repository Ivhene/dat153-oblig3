.class public interface abstract Lscenelib/annotations/util/coll/KeyedSet;
.super Ljava/lang/Object;
.source "KeyedSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final IGNORE:I = -0x1

.field public static final REPLACE:I = 0x1

.field public static final THROW_EXCEPTION:I


# virtual methods
.method public abstract add(Ljava/lang/Object;II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;II)TV;"
        }
    .end annotation
.end method

.method public abstract getKeyer()Lscenelib/annotations/util/coll/Keyer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscenelib/annotations/util/coll/Keyer<",
            "+TK;-TV;>;"
        }
    .end annotation
.end method

.method public abstract lookup(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method

.method public abstract replace(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation
.end method
