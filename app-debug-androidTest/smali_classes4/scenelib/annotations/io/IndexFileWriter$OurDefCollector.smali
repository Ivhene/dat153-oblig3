.class Lscenelib/annotations/io/IndexFileWriter$OurDefCollector;
.super Lscenelib/annotations/el/DefCollector;
.source "IndexFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/annotations/io/IndexFileWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OurDefCollector"
.end annotation


# instance fields
.field final synthetic this$0:Lscenelib/annotations/io/IndexFileWriter;


# direct methods
.method constructor <init>(Lscenelib/annotations/io/IndexFileWriter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/el/DefException;
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lscenelib/annotations/io/IndexFileWriter$OurDefCollector;->this$0:Lscenelib/annotations/io/IndexFileWriter;

    .line 62
    iget-object p1, p1, Lscenelib/annotations/io/IndexFileWriter;->scene:Lscenelib/annotations/el/AScene;

    invoke-direct {p0, p1}, Lscenelib/annotations/el/DefCollector;-><init>(Lscenelib/annotations/el/AScene;)V

    .line 63
    return-void
.end method

.method private requiredMetaannotations(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lscenelib/annotations/Annotation;",
            ">;)",
            "Ljava/util/Collection<",
            "Lscenelib/annotations/Annotation;",
            ">;"
        }
    .end annotation

    .line 79
    .local p1, "annos":Ljava/util/Collection;, "Ljava/util/Collection<Lscenelib/annotations/Annotation;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 80
    .local v0, "results":Ljava/util/Set;, "Ljava/util/Set<Lscenelib/annotations/Annotation;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/Annotation;

    .line 81
    .local v2, "a":Lscenelib/annotations/Annotation;
    iget-object v3, v2, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    iget-object v3, v3, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    .line 82
    .local v3, "aName":Ljava/lang/String;
    const-class v4, Ljava/lang/annotation/Retention;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Ljava/lang/annotation/Target;

    .line 83
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 84
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v2    # "a":Lscenelib/annotations/Annotation;
    .end local v3    # "aName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 87
    :cond_2
    return-object v0
.end method


# virtual methods
.method protected visitAnnotationDef(Lscenelib/annotations/el/AnnotationDef;)V
    .locals 4
    .param p1, "d"    # Lscenelib/annotations/el/AnnotationDef;

    .line 67
    iget-object v0, p1, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileWriter$OurDefCollector;->this$0:Lscenelib/annotations/io/IndexFileWriter;

    iget-object v0, v0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-static {v2}, Lscenelib/annotations/io/IOUtils;->packagePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileWriter$OurDefCollector;->this$0:Lscenelib/annotations/io/IndexFileWriter;

    iget-object v0, v0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "annotation @"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-static {v3}, Lscenelib/annotations/io/IOUtils;->basenamePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileWriter$OurDefCollector;->this$0:Lscenelib/annotations/io/IndexFileWriter;

    iget-object v1, p1, Lscenelib/annotations/el/AnnotationDef;->tlAnnotationsHere:Ljava/util/Set;

    invoke-direct {p0, v1}, Lscenelib/annotations/io/IndexFileWriter$OurDefCollector;->requiredMetaannotations(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lscenelib/annotations/io/IndexFileWriter;->access$000(Lscenelib/annotations/io/IndexFileWriter;Ljava/util/Collection;)V

    .line 72
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileWriter$OurDefCollector;->this$0:Lscenelib/annotations/io/IndexFileWriter;

    iget-object v0, v0, Lscenelib/annotations/io/IndexFileWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 73
    iget-object v0, p0, Lscenelib/annotations/io/IndexFileWriter$OurDefCollector;->this$0:Lscenelib/annotations/io/IndexFileWriter;

    invoke-virtual {v0, p1}, Lscenelib/annotations/io/IndexFileWriter;->printAnnotationDefBody(Lscenelib/annotations/el/AnnotationDef;)V

    .line 75
    :cond_0
    return-void
.end method
