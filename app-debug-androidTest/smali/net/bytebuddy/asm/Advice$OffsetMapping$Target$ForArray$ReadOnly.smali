.class public Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray$ReadOnly;
.super Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadOnly"
.end annotation


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V
    .locals 0
    .param p1, "target"    # Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ">;)V"
        }
    .end annotation

    .line 1012
    .local p2, "valueReads":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/implementation/bytecode/StackManipulation;>;"
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target$ForArray;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    .line 1013
    return-void
.end method


# virtual methods
.method public resolveWrite()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2

    .line 1019
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot write to read-only array value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
