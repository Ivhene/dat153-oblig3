.class final Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ZipEntryElement;
.super Ljava/lang/Object;
.source "Processor.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/xml/Processor$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/objectweb/asmx/xml/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ZipEntryElement"
.end annotation


# instance fields
.field private zos:Ljava/util/zip/ZipOutputStream;


# direct methods
.method public constructor <init>(Ljava/util/zip/ZipOutputStream;)V
    .locals 0
    .param p1, "zos"    # Ljava/util/zip/ZipOutputStream;

    .line 1031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ZipEntryElement;->zos:Ljava/util/zip/ZipOutputStream;

    .line 1033
    return-void
.end method


# virtual methods
.method public closeEntry()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1042
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ZipEntryElement;->zos:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 1043
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ZipEntryElement;->zos:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 1044
    return-void
.end method

.method public openEntry(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1036
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 1037
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ZipEntryElement;->zos:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 1038
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$ZipEntryElement;->zos:Ljava/util/zip/ZipOutputStream;

    return-object v1
.end method
