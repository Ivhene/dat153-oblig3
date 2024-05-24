.class Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
.super Lnet/bytebuddy/jar/asm/Symbol;
.source "SymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/jar/asm/SymbolTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field final hashCode:I

.field next:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;


# direct methods
.method constructor <init>(IIJI)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "tag"    # I
    .param p3, "data"    # J
    .param p5, "hashCode"    # I

    .line 1318
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/Symbol;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1319
    iput p5, p0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->hashCode:I

    .line 1320
    return-void
.end method

.method constructor <init>(IILjava/lang/String;I)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "tag"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "hashCode"    # I

    .line 1302
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/Symbol;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1303
    iput p4, p0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->hashCode:I

    .line 1304
    return-void
.end method

.method constructor <init>(IILjava/lang/String;JI)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "tag"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "data"    # J
    .param p6, "hashCode"    # I

    .line 1307
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/Symbol;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1308
    iput p6, p0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->hashCode:I

    .line 1309
    return-void
.end method

.method constructor <init>(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "tag"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "hashCode"    # I

    .line 1313
    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/jar/asm/Symbol;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1314
    iput p5, p0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->hashCode:I

    .line 1315
    return-void
.end method

.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "tag"    # I
    .param p3, "owner"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "data"    # J
    .param p8, "hashCode"    # I

    .line 1297
    invoke-direct/range {p0 .. p7}, Lnet/bytebuddy/jar/asm/Symbol;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1298
    iput p8, p0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->hashCode:I

    .line 1299
    return-void
.end method
