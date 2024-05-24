.class public abstract Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;
.super Lnet/bytebuddy/jar/asm/ClassVisitor;
.source "MetadataAwareClassVisitor.java"


# instance fields
.field private triggerAttributes:Z

.field private triggerNestHost:Z

.field private triggerOuterClass:Z


# direct methods
.method protected constructor <init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V
    .locals 1
    .param p1, "api"    # I
    .param p2, "classVisitor"    # Lnet/bytebuddy/jar/asm/ClassVisitor;

    .line 47
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;-><init>(ILnet/bytebuddy/jar/asm/ClassVisitor;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerNestHost:Z

    .line 49
    iput-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerOuterClass:Z

    .line 50
    iput-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerAttributes:Z

    .line 51
    return-void
.end method

.method private considerTriggerAfterAttributes()V
    .locals 1

    .line 98
    iget-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerAttributes:Z

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerAttributes:Z

    .line 100
    invoke-virtual {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onAfterAttributes()V

    .line 102
    :cond_0
    return-void
.end method

.method private considerTriggerNestHost()V
    .locals 1

    .line 78
    iget-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerNestHost:Z

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerNestHost:Z

    .line 80
    invoke-virtual {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onNestHost()V

    .line 82
    :cond_0
    return-void
.end method

.method private considerTriggerOuterClass()V
    .locals 1

    .line 88
    iget-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerOuterClass:Z

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerOuterClass:Z

    .line 90
    invoke-virtual {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onOuterType()V

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAfterAttributes()V
    .locals 0

    .line 72
    return-void
.end method

.method protected onNestHost()V
    .locals 0

    .line 58
    return-void
.end method

.method protected onOuterType()V
    .locals 0

    .line 65
    return-void
.end method

.method protected onVisitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 189
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method protected onVisitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 0
    .param p1, "attribute"    # Lnet/bytebuddy/jar/asm/Attribute;

    .line 225
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V

    .line 226
    return-void
.end method

.method protected onVisitEnd()V
    .locals 0

    .line 321
    invoke-super {p0}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitEnd()V

    .line 322
    return-void
.end method

.method protected onVisitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 1
    .param p1, "modifiers"    # I
    .param p2, "internalName"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "defaultValue"    # Ljava/lang/Object;

    .line 284
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object v0

    return-object v0
.end method

.method protected onVisitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "modifiers"    # I

    .line 262
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 263
    return-void
.end method

.method protected onVisitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 1
    .param p1, "modifiers"    # I
    .param p2, "internalName"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exception"    # [Ljava/lang/String;

    .line 306
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v0

    return-object v0
.end method

.method protected onVisitNestHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "nestHost"    # Ljava/lang/String;

    .line 116
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestHost(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method protected onVisitNestMember(Ljava/lang/String;)V
    .locals 0
    .param p1, "nestMember"    # Ljava/lang/String;

    .line 242
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitNestMember(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method protected onVisitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;

    .line 134
    invoke-super {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method protected onVisitPermittedSubclass(Ljava/lang/String;)V
    .locals 0
    .param p1, "permittedSubclass"    # Ljava/lang/String;

    .line 151
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitPermittedSubclass(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method protected onVisitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .line 171
    invoke-super {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    move-result-object v0

    return-object v0
.end method

.method protected onVisitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1
    .param p1, "typeReference"    # I
    .param p2, "typePath"    # Lnet/bytebuddy/jar/asm/TypePath;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 209
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public final visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 176
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    .line 177
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    .line 178
    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public final visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 0
    .param p1, "attribute"    # Lnet/bytebuddy/jar/asm/Attribute;

    .line 214
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    .line 215
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    .line 216
    invoke-virtual {p0, p1}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V

    .line 217
    return-void
.end method

.method public final visitEnd()V
    .locals 0

    .line 311
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    .line 312
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    .line 313
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerAfterAttributes()V

    .line 314
    invoke-virtual {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitEnd()V

    .line 315
    return-void
.end method

.method public final visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 1
    .param p1, "modifiers"    # I
    .param p2, "internalName"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "defaultValue"    # Ljava/lang/Object;

    .line 267
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    .line 268
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    .line 269
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerAfterAttributes()V

    .line 270
    invoke-virtual/range {p0 .. p5}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object v0

    return-object v0
.end method

.method public final visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "modifiers"    # I

    .line 247
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    .line 248
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    .line 249
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerAfterAttributes()V

    .line 250
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    return-void
.end method

.method public final visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 1
    .param p1, "modifiers"    # I
    .param p2, "internalName"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exception"    # [Ljava/lang/String;

    .line 289
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    .line 290
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    .line 291
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerAfterAttributes()V

    .line 292
    invoke-virtual/range {p0 .. p5}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v0

    return-object v0
.end method

.method public final visitNestHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "nestHost"    # Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerNestHost:Z

    .line 107
    invoke-virtual {p0, p1}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitNestHost(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public final visitNestMember(Ljava/lang/String;)V
    .locals 0
    .param p1, "nestMember"    # Ljava/lang/String;

    .line 230
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    .line 231
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    .line 232
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerAfterAttributes()V

    .line 233
    invoke-virtual {p0, p1}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitNestMember(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public final visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->triggerOuterClass:Z

    .line 123
    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public final visitPermittedSubclass(Ljava/lang/String;)V
    .locals 0
    .param p1, "permittedSubclass"    # Ljava/lang/String;

    .line 139
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    .line 140
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    .line 141
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerAfterAttributes()V

    .line 142
    invoke-virtual {p0, p1}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitPermittedSubclass(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/RecordComponentVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    .line 157
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    .line 158
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerAfterAttributes()V

    .line 159
    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    move-result-object v0

    return-object v0
.end method

.method public final visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1
    .param p1, "typeReference"    # I
    .param p2, "typePath"    # Lnet/bytebuddy/jar/asm/TypePath;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 194
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerNestHost()V

    .line 195
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->considerTriggerOuterClass()V

    .line 196
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/bytebuddy/utility/visitor/MetadataAwareClassVisitor;->onVisitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method
